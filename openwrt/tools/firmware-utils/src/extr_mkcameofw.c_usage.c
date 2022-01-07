
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

__attribute__((used)) static void usage(int status)
{
 FILE *stream = (status != EXIT_SUCCESS) ? stderr : stdout;

 fprintf(stream, "Usage: %s [OPTIONS...]\n", progname);
 fprintf(stream,
"\n"
"Options:\n"
"  -k <file>       read kernel image from the file <file>\n"
"  -c              use the kernel image as a combined image\n"
"  -M <model>      set model to <model>\n"
"  -o <file>       write output to the file <file>\n"
"  -r <file>       read rootfs image from the file <file>\n"
"  -S <signature>  set image signature to <signature>\n"
"  -R <region>     set image region to <region>\n"
"  -V <version>    set image version to <version>\n"
"  -I <size>       set image size to <size>\n"
"  -K <size>       set kernel size to <size>\n"
"  -h              show this screen\n"
 );

 exit(status);
}
