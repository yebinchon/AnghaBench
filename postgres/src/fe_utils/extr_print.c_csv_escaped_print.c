
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fputc (char const,int *) ;

__attribute__((used)) static void
csv_escaped_print(const char *str, FILE *fout)
{
 const char *p;

 fputc('"', fout);
 for (p = str; *p; p++)
 {
  if (*p == '"')
   fputc('"', fout);
  fputc(*p, fout);
 }
 fputc('"', fout);
}
