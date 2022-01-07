
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void usage(const char *mess)
{
 fprintf(stderr, "Error: %s\n", mess);
 fprintf(stderr, "Usage: mkbrncmdline -i input_file -o output_file [-a loadaddress] arg1 [argx ...]\n");
 fprintf(stderr, "\n");
 exit(1);
}
