
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {char const* const data; struct TYPE_9__* next; } ;
typedef TYPE_2__ printTableFooter ;
struct TYPE_10__ {char const* const title; char** headers; char** cells; unsigned int ncolumns; TYPE_1__* opt; } ;
typedef TYPE_3__ printTableContent ;
struct TYPE_11__ {scalar_t__ separator_zero; } ;
struct TYPE_8__ {int tuples_only; TYPE_5__ recordSep; scalar_t__ stop_table; TYPE_5__ fieldSep; scalar_t__ start_table; } ;
typedef int FILE ;


 scalar_t__ cancel_pressed ;
 TYPE_2__* footers_with_default (TYPE_3__ const*) ;
 int fputc (char,int *) ;
 int fputs (char const* const,int *) ;
 int print_separator (TYPE_5__,int *) ;

__attribute__((used)) static void
print_unaligned_text(const printTableContent *cont, FILE *fout)
{
 bool opt_tuples_only = cont->opt->tuples_only;
 unsigned int i;
 const char *const *ptr;
 bool need_recordsep = 0;

 if (cancel_pressed)
  return;

 if (cont->opt->start_table)
 {

  if (!opt_tuples_only && cont->title)
  {
   fputs(cont->title, fout);
   print_separator(cont->opt->recordSep, fout);
  }


  if (!opt_tuples_only)
  {
   for (ptr = cont->headers; *ptr; ptr++)
   {
    if (ptr != cont->headers)
     print_separator(cont->opt->fieldSep, fout);
    fputs(*ptr, fout);
   }
   need_recordsep = 1;
  }
 }
 else

  need_recordsep = 1;


 for (i = 0, ptr = cont->cells; *ptr; i++, ptr++)
 {
  if (need_recordsep)
  {
   print_separator(cont->opt->recordSep, fout);
   need_recordsep = 0;
   if (cancel_pressed)
    break;
  }
  fputs(*ptr, fout);

  if ((i + 1) % cont->ncolumns)
   print_separator(cont->opt->fieldSep, fout);
  else
   need_recordsep = 1;
 }


 if (cont->opt->stop_table)
 {
  printTableFooter *footers = footers_with_default(cont);

  if (!opt_tuples_only && footers != ((void*)0) && !cancel_pressed)
  {
   printTableFooter *f;

   for (f = footers; f; f = f->next)
   {
    if (need_recordsep)
    {
     print_separator(cont->opt->recordSep, fout);
     need_recordsep = 0;
    }
    fputs(f->data, fout);
    need_recordsep = 1;
   }
  }






  if (need_recordsep)
  {
   if (cont->opt->recordSep.separator_zero)
    print_separator(cont->opt->recordSep, fout);
   else
    fputc('\n', fout);
  }
 }
}
