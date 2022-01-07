
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t printTextRule ;
struct TYPE_4__ {char* hrule; char* leftvrule; char* midvrule; char* rightvrule; } ;
typedef TYPE_1__ printTextLineFormat ;
struct TYPE_5__ {TYPE_1__* lrule; } ;
typedef TYPE_2__ printTextFormat ;
typedef int FILE ;


 int fprintf (int *,char*,char*,char*,...) ;
 int fputc (char,int *) ;
 int fputs (char*,int *) ;

__attribute__((used)) static void
_print_horizontal_line(const unsigned int ncolumns, const unsigned int *widths,
        unsigned short border, printTextRule pos,
        const printTextFormat *format,
        FILE *fout)
{
 const printTextLineFormat *lformat = &format->lrule[pos];
 unsigned int i,
    j;

 if (border == 1)
  fputs(lformat->hrule, fout);
 else if (border == 2)
  fprintf(fout, "%s%s", lformat->leftvrule, lformat->hrule);

 for (i = 0; i < ncolumns; i++)
 {
  for (j = 0; j < widths[i]; j++)
   fputs(lformat->hrule, fout);

  if (i < ncolumns - 1)
  {
   if (border == 0)
    fputc(' ', fout);
   else
    fprintf(fout, "%s%s%s", lformat->hrule,
      lformat->midvrule, lformat->hrule);
  }
 }

 if (border == 2)
  fprintf(fout, "%s%s", lformat->hrule, lformat->rightvrule);
 else if (border == 1)
  fputs(lformat->hrule, fout);

 fputc('\n', fout);
}
