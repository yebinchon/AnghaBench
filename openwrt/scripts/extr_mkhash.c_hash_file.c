
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_type {char* (* func ) (int *) ;} ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,...) ;
 int printf (char*,char const*,...) ;
 int stderr ;
 int * stdin ;
 int strcmp (char const*,char*) ;
 char* stub1 (int *) ;
 char* stub2 (int *) ;

__attribute__((used)) static int hash_file(struct hash_type *t, const char *filename, bool add_filename)
{
 const char *str;

 if (!filename || !strcmp(filename, "-")) {
  str = t->func(stdin);
 } else {
  FILE *f = fopen(filename, "r");

  if (!f) {
   fprintf(stderr, "Failed to open '%s'\n", filename);
   return 1;
  }
  str = t->func(f);
  fclose(f);
 }

 if (!str) {
  fprintf(stderr, "Failed to generate hash\n");
  return 1;
 }

 if (add_filename)
  printf("%s %s\n", str, filename ? filename : "-");
 else
  printf("%s\n", str);
 return 0;
}
