
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int csv_escaped_print (char const*,int *) ;
 int fputs (char const*,int *) ;
 int * strchr (char const*,char) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strcspn (char const*,char*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void
csv_print_field(const char *str, FILE *fout, char sep)
{
 if (strchr(str, sep) != ((void*)0) ||
  strcspn(str, "\r\n\"") != strlen(str) ||
  strcmp(str, "\\.") == 0 ||
  sep == '\\' || sep == '.')
  csv_escaped_print(str, fout);
 else
  fputs(str, fout);
}
