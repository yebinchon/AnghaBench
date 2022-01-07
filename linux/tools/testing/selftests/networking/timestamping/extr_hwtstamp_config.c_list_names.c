
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,char const*) ;

__attribute__((used)) static void list_names(FILE *f, const char **names, int size)
{
 int value;

 for (value = 0; value < size; value++)
  if (names[value])
   fprintf(f, "    %s\n", names[value]);
}
