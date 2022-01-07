
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void __attribute__((noreturn)) usage(void)
{
 fprintf(stderr, "Usage: nec-enc -i infile -o outfile -k <key>\n");
 exit(EXIT_FAILURE);
}
