#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 char* progname ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/ * stdout ; 

void FUNC2(int status)
{
    FILE *stream = (status != EXIT_SUCCESS) ? stderr : stdout;

    FUNC1(stream, "Usage: %s [OPTIONS...]\n", progname);
    FUNC1(stream,
            "\n"
            "Options:\n"
            "  -k <kernel>     path for kernel image\n"
            "  -r <rootfs>     path for rootfs image\n"
            "  -s <rfssize>    size of output rootfs\n"
            "  -v <version>    version string\n"
            "  -b <boardname>  name of board to generate image for\n"
            "  -o <out_name>   name of output image\n"
            "  -l <hdr_length> length of header, default 65536\n"
            "  -h              show this screen\n"
    );

    FUNC0(status);
}