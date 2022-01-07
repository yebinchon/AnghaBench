
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
 fprintf(stderr, "Usage: mkbrnimg [-o output_file] [-m magic] [-s signature] [-p crc32 poly] kernel_file [additional files]\n");
 fprintf(stderr, "\n");
 exit(1);
}
