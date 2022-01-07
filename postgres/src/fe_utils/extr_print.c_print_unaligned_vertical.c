
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char const* const data; struct TYPE_7__* next; } ;
typedef TYPE_2__ printTableFooter ;
struct TYPE_8__ {char const* const title; char** cells; char const* const* headers; unsigned int ncolumns; TYPE_1__* opt; TYPE_2__* footers; } ;
typedef TYPE_3__ printTableContent ;
struct TYPE_9__ {scalar_t__ separator_zero; } ;
struct TYPE_6__ {int tuples_only; TYPE_5__ recordSep; scalar_t__ stop_table; TYPE_5__ fieldSep; scalar_t__ start_table; } ;
typedef int FILE ;


 scalar_t__ cancel_pressed ;
 int fputc (char,int *) ;
 int fputs (char const* const,int *) ;
 int print_separator (TYPE_5__,int *) ;

__attribute__((used)) static void
print_unaligned_vertical(const printTableContent *cont, FILE *fout)
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
   print_separator(cont->opt->recordSep, fout);
   need_recordsep = 0;
   if (cancel_pressed)
    break;
  }

  fputs(cont->headers[i % cont->ncolumns], fout);
  print_separator(cont->opt->fieldSep, fout);
  fputs(*ptr, fout);

  if ((i + 1) % cont->ncolumns)
   print_separator(cont->opt->recordSep, fout);
  else
   need_recordsep = 1;
 }

 if (cont->opt->stop_table)
 {

  if (!opt_tuples_only && cont->footers != ((void*)0) && !cancel_pressed)
  {
   printTableFooter *f;

   print_separator(cont->opt->recordSep, fout);
   for (f = cont->footers; f; f = f->next)
   {
    print_separator(cont->opt->recordSep, fout);
    fputs(f->data, fout);
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
