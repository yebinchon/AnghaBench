
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct board_info {int dummy; } ;
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
 struct board_info *board;

 fprintf(stream, "Usage: %s [OPTIONS...]\n", progname);
 fprintf(stream,
"\n"
"Options:\n"
"  -B <board>      create image for the board specified with <board>\n"
"  -i <file>       read input from the file <file>\n"
"  -o <file>       write output to the file <file>\n"
"  -v <version>    set image version to <version>\n"
"  -r <region>     set image region to <region>\n"
"  -H <hd_id>      set image hardware id to <hd_id>\n"
"  -h              show this screen\n"
 );

 exit(status);
}
