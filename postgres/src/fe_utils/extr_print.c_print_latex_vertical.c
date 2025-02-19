
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char const* const data; struct TYPE_6__* next; } ;
typedef TYPE_2__ printTableFooter ;
struct TYPE_7__ {char const* const title; char** cells; unsigned int ncolumns; char const* const* headers; TYPE_2__* footers; TYPE_1__* opt; } ;
typedef TYPE_3__ printTableContent ;
struct TYPE_5__ {int tuples_only; unsigned short border; int prior_records; scalar_t__ stop_table; scalar_t__ start_table; } ;
typedef int FILE ;


 scalar_t__ cancel_pressed ;
 int fprintf (int *,char*,int ) ;
 int fputc (char,int *) ;
 int fputs (char*,int *) ;
 int latex_escaped_print (char const* const,int *) ;

__attribute__((used)) static void
print_latex_vertical(const printTableContent *cont, FILE *fout)
{
 bool opt_tuples_only = cont->opt->tuples_only;
 unsigned short opt_border = cont->opt->border;
 unsigned long record = cont->opt->prior_records + 1;
 unsigned int i;
 const char *const *ptr;

 if (cancel_pressed)
  return;

 if (opt_border > 2)
  opt_border = 2;

 if (cont->opt->start_table)
 {

  if (!opt_tuples_only && cont->title)
  {
   fputs("\\begin{center}\n", fout);
   latex_escaped_print(cont->title, fout);
   fputs("\n\\end{center}\n\n", fout);
  }


  fputs("\\begin{tabular}{", fout);
  if (opt_border == 0)
   fputs("cl", fout);
  else if (opt_border == 1)
   fputs("c|l", fout);
  else if (opt_border == 2)
   fputs("|c|l|", fout);
  fputs("}\n", fout);
 }


 for (i = 0, ptr = cont->cells; *ptr; i++, ptr++)
 {

  if (i % cont->ncolumns == 0)
  {
   if (cancel_pressed)
    break;
   if (!opt_tuples_only)
   {
    if (opt_border == 2)
    {
     fputs("\\hline\n", fout);
     fprintf(fout, "\\multicolumn{2}{|c|}{\\textit{Record %lu}} \\\\\n", record++);
    }
    else
     fprintf(fout, "\\multicolumn{2}{c}{\\textit{Record %lu}} \\\\\n", record++);
   }
   if (opt_border >= 1)
    fputs("\\hline\n", fout);
  }

  latex_escaped_print(cont->headers[i % cont->ncolumns], fout);
  fputs(" & ", fout);
  latex_escaped_print(*ptr, fout);
  fputs(" \\\\\n", fout);
 }

 if (cont->opt->stop_table)
 {
  if (opt_border == 2)
   fputs("\\hline\n", fout);

  fputs("\\end{tabular}\n\n\\noindent ", fout);


  if (cont->footers && !opt_tuples_only && !cancel_pressed)
  {
   printTableFooter *f;

   for (f = cont->footers; f; f = f->next)
   {
    latex_escaped_print(f->data, fout);
    fputs(" \\\\\n", fout);
   }
  }

  fputc('\n', fout);
 }
}
