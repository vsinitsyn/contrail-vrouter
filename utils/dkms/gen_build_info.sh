#!/bin/sh
#
# gen_build_info.sh -- creates vr_build_info.c in dp-core/ for dkms
# builds
#
# Copyright (c) 2015, Juniper Networks, Inc.
# All rights reserved
#

build_info_file="$2/dp-core/vr_buildinfo.c"

printf "/*\n" > $build_info_file
printf " * Autogenerated file. Do not edit.\n" >> $build_info_file
printf " */\n\n" >> $build_info_file
echo -n "char *ContrailBuildInfo = \"{\\\"build-info\\\": [{\\\"build-time\\\": \\\"`date`\\\"," >> $build_info_file
echo -n "\\\"build-hostname\\\": \\\"`hostname`\\\", \\\"build-git-ver\\\": \\\"dkms\\\"," >> $build_info_file
echo "\\\"build-user\\\": \\\"`whoami`\\\", \\\"build-version\\\": \\\"$1-dkms\\\"}]}\";" >> $build_info_file

