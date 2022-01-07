
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct model {char digit; char* name; } ;


 int exit (int) ;
 int fprintf (int ,char*,...) ;
 struct model* models ;
 int stderr ;

__attribute__((used)) static void usage(const char *mess)
{
 const struct model *m;

 fprintf(stderr, "Error: %s\n", mess);
 fprintf(stderr, "Usage: motorola-bin -device|--strip infile outfile\n");
 fprintf(stderr, "Known devices: ");

 for (m = models; m->digit != '\0'; m++)
  fprintf(stderr, " %c - %s", m->digit, m->name);

 fprintf(stderr, "\n");
 exit(1);
}
