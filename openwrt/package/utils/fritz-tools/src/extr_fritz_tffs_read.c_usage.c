
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
 "  -a              list all key value pairs found in the TFFS file/device\n"
 "  -b              swap bytes while parsing the TFFS file/device\n"
 "  -h              show this screen\n"
 "  -i <file>       inspect the given TFFS file/device <file>\n"
 "  -l              list all supported keys\n"
 "  -n <key name>   display the value of the given key\n"
 "  -s <size>       the (max) size of the TFFS file/device <size>\n"
 );

 exit(status);
}
