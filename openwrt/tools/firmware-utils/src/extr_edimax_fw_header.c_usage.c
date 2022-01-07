
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
"  -e <addr>       set end addr to <addr>\n"
"  -f              set force flag\n"
"  -h              show this screen\n"
"  -i <file>       read input data from the file <file>\n"
"  -o <file>       write output to the file <file>\n"
"  -m <model>      set model to <model>\n"
"  -M <magic>      set image magic to <magic>\n"
"  -n <name>       set MTD device name to <name>\n"
"  -s <addr>       set start address to <addr>\n"
"  -t <type>       set image type to <type>\n"
"  -v <version>    set firmware version to <version>\n"
 );

 exit(status);
}
