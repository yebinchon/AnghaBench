
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct separator {scalar_t__ separator; scalar_t__ separator_zero; } ;
typedef int FILE ;


 int fputc (char,int *) ;
 int fputs (scalar_t__,int *) ;

__attribute__((used)) static void
print_separator(struct separator sep, FILE *fout)
{
 if (sep.separator_zero)
  fputc('\000', fout);
 else if (sep.separator)
  fputs(sep.separator, fout);
}
