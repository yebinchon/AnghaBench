
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int errno ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int parse (int *) ;

int names_init(char *n)
{
 FILE *f;

 f = fopen(n, "r");
 if (!f)
  return errno;

 parse(f);
 fclose(f);
 return 0;
}
