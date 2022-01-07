
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fputc (char const,int *) ;
 int fputs (char*,int *) ;

__attribute__((used)) static void
troff_ms_escaped_print(const char *in, FILE *fout)
{
 const char *p;

 for (p = in; *p; p++)
  switch (*p)
  {
   case '\\':
    fputs("\\(rs", fout);
    break;
   default:
    fputc(*p, fout);
  }
}
