
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fputc (char const,int *) ;
 int fputs (char*,int *) ;

void
html_escaped_print(const char *in, FILE *fout)
{
 const char *p;
 bool leading_space = 1;

 for (p = in; *p; p++)
 {
  switch (*p)
  {
   case '&':
    fputs("&amp;", fout);
    break;
   case '<':
    fputs("&lt;", fout);
    break;
   case '>':
    fputs("&gt;", fout);
    break;
   case '\n':
    fputs("<br />\n", fout);
    break;
   case '"':
    fputs("&quot;", fout);
    break;
   case ' ':

    if (leading_space)
     fputs("&nbsp;", fout);
    else
     fputs(" ", fout);
    break;
   default:
    fputc(*p, fout);
  }
  if (*p != ' ')
   leading_space = 0;
 }
}
