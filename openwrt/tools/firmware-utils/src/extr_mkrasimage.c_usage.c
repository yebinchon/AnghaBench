
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EXIT_SUCCESS ;
 int exit (int) ;
 int fprintf (int *,char*,...) ;
 char* progname ;
 int * stderr ;
 int * stdout ;

void usage(int status)
{
    FILE *stream = (status != EXIT_SUCCESS) ? stderr : stdout;

    fprintf(stream, "Usage: %s [OPTIONS...]\n", progname);
    fprintf(stream,
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

    exit(status);
}
