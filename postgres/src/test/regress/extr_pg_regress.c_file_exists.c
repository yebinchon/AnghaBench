
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char const*,char*) ;

bool
file_exists(const char *file)
{
 FILE *f = fopen(file, "r");

 if (!f)
  return 0;
 fclose(f);
 return 1;
}
