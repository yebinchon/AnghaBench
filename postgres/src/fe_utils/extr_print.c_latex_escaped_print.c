
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fputc (char const,int *) ;
 int fputs (char*,int *) ;

__attribute__((used)) static void
latex_escaped_print(const char *in, FILE *fout)
{
 const char *p;

 for (p = in; *p; p++)
  switch (*p)
  {





   case '#':
    fputs("\\#", fout);
    break;
   case '$':
    fputs("\\$", fout);
    break;
   case '%':
    fputs("\\%", fout);
    break;
   case '&':
    fputs("\\&", fout);
    break;
   case '<':
    fputs("\\textless{}", fout);
    break;
   case '>':
    fputs("\\textgreater{}", fout);
    break;
   case '\\':
    fputs("\\textbackslash{}", fout);
    break;
   case '^':
    fputs("\\^{}", fout);
    break;
   case '_':
    fputs("\\_", fout);
    break;
   case '{':
    fputs("\\{", fout);
    break;
   case '|':
    fputs("\\textbar{}", fout);
    break;
   case '}':
    fputs("\\}", fout);
    break;
   case '~':
    fputs("\\~{}", fout);
    break;
   case '\n':

    fputs("\\\\", fout);
    break;
   default:
    fputc(*p, fout);
  }
}
