
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
 int troff_ms_escaped_print (char const* const,int *) ;

__attribute__((used)) static void
print_troff_ms_vertical(const printTableContent *cont, FILE *fout)
{
 bool opt_tuples_only = cont->opt->tuples_only;
 unsigned short opt_border = cont->opt->border;
 unsigned long record = cont->opt->prior_records + 1;
 unsigned int i;
 const char *const *ptr;
 unsigned short current_format = 0;

 if (cancel_pressed)
  return;

 if (opt_border > 2)
  opt_border = 2;

 if (cont->opt->start_table)
 {

  if (!opt_tuples_only && cont->title)
  {
   fputs(".LP\n.DS C\n", fout);
   troff_ms_escaped_print(cont->title, fout);
   fputs("\n.DE\n", fout);
  }


  fputs(".LP\n.TS\n", fout);
  if (opt_border == 2)
   fputs("center box;\n", fout);
  else
   fputs("center;\n", fout);


  if (opt_tuples_only)
   fputs("c l;\n", fout);
 }
 else
  current_format = 2;


 for (i = 0, ptr = cont->cells; *ptr; i++, ptr++)
 {

  if (i % cont->ncolumns == 0)
  {
   if (cancel_pressed)
    break;
   if (!opt_tuples_only)
   {
    if (current_format != 1)
    {
     if (opt_border == 2 && record > 1)
      fputs("_\n", fout);
     if (current_format != 0)
      fputs(".T&\n", fout);
     fputs("c s.\n", fout);
     current_format = 1;
    }
    fprintf(fout, "\\fIRecord %lu\\fP\n", record++);
   }
   if (opt_border >= 1)
    fputs("_\n", fout);
  }

  if (!opt_tuples_only)
  {
   if (current_format != 2)
   {
    if (current_format != 0)
     fputs(".T&\n", fout);
    if (opt_border != 1)
     fputs("c l.\n", fout);
    else
     fputs("c | l.\n", fout);
    current_format = 2;
   }
  }

  troff_ms_escaped_print(cont->headers[i % cont->ncolumns], fout);
  fputc('\t', fout);
  troff_ms_escaped_print(*ptr, fout);

  fputc('\n', fout);
 }

 if (cont->opt->stop_table)
 {
  fputs(".TE\n.DS L\n", fout);


  if (cont->footers && !opt_tuples_only && !cancel_pressed)
  {
   printTableFooter *f;

   for (f = cont->footers; f; f = f->next)
   {
    troff_ms_escaped_print(f->data, fout);
    fputc('\n', fout);
   }
  }

  fputs(".DE\n", fout);
 }
}
