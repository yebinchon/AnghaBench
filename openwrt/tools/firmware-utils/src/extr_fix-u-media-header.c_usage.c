
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
"  -B <board_id>   set board ID to <board_id>\n"
"  -i <file>       read input from the file <file>\n"
"  -F              load factory defaults\n"
"  -o <file>       write output to the file <file>\n"
"  -T <type>       set image type to <type>\n"
"  -h              show this screen\n"
 );

 exit(status);
}
