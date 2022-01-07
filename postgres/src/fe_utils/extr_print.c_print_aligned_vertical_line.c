
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t printTextRule ;
struct TYPE_4__ {char* leftvrule; char* hrule; char* midvrule; char* rightvrule; } ;
typedef TYPE_1__ printTextLineFormat ;
struct TYPE_5__ {TYPE_1__* lrule; } ;
typedef TYPE_2__ printTextFormat ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;
 int fputc (char,int *) ;
 int fputs (char*,int *) ;

__attribute__((used)) static void
print_aligned_vertical_line(const printTextFormat *format,
       const unsigned short opt_border,
       unsigned long record,
       unsigned int hwidth,
       unsigned int dwidth,
       printTextRule pos,
       FILE *fout)
{
 const printTextLineFormat *lformat = &format->lrule[pos];
 unsigned int i;
 int reclen = 0;

 if (opt_border == 2)
  fprintf(fout, "%s%s", lformat->leftvrule, lformat->hrule);
 else if (opt_border == 1)
  fputs(lformat->hrule, fout);

 if (record)
 {
  if (opt_border == 0)
   reclen = fprintf(fout, "* Record %lu", record);
  else
   reclen = fprintf(fout, "[ RECORD %lu ]", record);
 }
 if (opt_border != 2)
  reclen++;
 if (reclen < 0)
  reclen = 0;
 for (i = reclen; i < hwidth; i++)
  fputs(opt_border > 0 ? lformat->hrule : " ", fout);
 reclen -= hwidth;

 if (opt_border > 0)
 {
  if (reclen-- <= 0)
   fputs(lformat->hrule, fout);
  if (reclen-- <= 0)
   fputs(lformat->midvrule, fout);
  if (reclen-- <= 0)
   fputs(lformat->hrule, fout);
 }
 else
 {
  if (reclen-- <= 0)
   fputc(' ', fout);
 }
 if (reclen < 0)
  reclen = 0;
 for (i = reclen; i < dwidth; i++)
  fputs(opt_border > 0 ? lformat->hrule : " ", fout);
 if (opt_border == 2)
  fprintf(fout, "%s%s", lformat->hrule, lformat->rightvrule);
 fputc('\n', fout);
}
