
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_21__ {TYPE_1__* opt; } ;
typedef TYPE_2__ printTableContent ;
struct TYPE_20__ {int format; int expanded; } ;
typedef int FILE ;


 int ClosePager (int *) ;
 int EXIT_FAILURE ;
 int IsPagerNeeded (TYPE_2__ const*,int ,int,int **,int*) ;






 int PRINT_NOTHING ;



 char* _ (char*) ;
 scalar_t__ cancel_pressed ;
 int exit (int ) ;
 int fprintf (int ,char*,int) ;
 int print_aligned_text (TYPE_2__ const*,int *,int) ;
 int print_aligned_vertical (TYPE_2__ const*,int *,int) ;
 int print_asciidoc_text (TYPE_2__ const*,int *) ;
 int print_asciidoc_vertical (TYPE_2__ const*,int *) ;
 int print_csv_text (TYPE_2__ const*,int *) ;
 int print_csv_vertical (TYPE_2__ const*,int *) ;
 int print_html_text (TYPE_2__ const*,int *) ;
 int print_html_vertical (TYPE_2__ const*,int *) ;
 int print_latex_longtable_text (TYPE_2__ const*,int *) ;
 int print_latex_text (TYPE_2__ const*,int *) ;
 int print_latex_vertical (TYPE_2__ const*,int *) ;
 int print_troff_ms_text (TYPE_2__ const*,int *) ;
 int print_troff_ms_vertical (TYPE_2__ const*,int *) ;
 int print_unaligned_text (TYPE_2__ const*,int *) ;
 int print_unaligned_vertical (TYPE_2__ const*,int *) ;
 int stderr ;

void
printTable(const printTableContent *cont,
     FILE *fout, bool is_pager, FILE *flog)
{
 bool is_local_pager = 0;

 if (cancel_pressed)
  return;

 if (cont->opt->format == PRINT_NOTHING)
  return;


 if (!is_pager &&
  cont->opt->format != 136 &&
  cont->opt->format != 128)
 {
  IsPagerNeeded(cont, 0, (cont->opt->expanded == 1), &fout, &is_pager);
  is_local_pager = is_pager;
 }



 if (flog)
  print_aligned_text(cont, flog, 0);

 switch (cont->opt->format)
 {
  case 129:
   if (cont->opt->expanded == 1)
    print_unaligned_vertical(cont, fout);
   else
    print_unaligned_text(cont, fout);
   break;
  case 136:
  case 128:






   if (cont->opt->expanded == 1 ||
    (cont->opt->expanded == 2 && is_pager))
    print_aligned_vertical(cont, fout, is_pager);
   else
    print_aligned_text(cont, fout, is_pager);
   break;
  case 134:
   if (cont->opt->expanded == 1)
    print_csv_vertical(cont, fout);
   else
    print_csv_text(cont, fout);
   break;
  case 133:
   if (cont->opt->expanded == 1)
    print_html_vertical(cont, fout);
   else
    print_html_text(cont, fout);
   break;
  case 135:
   if (cont->opt->expanded == 1)
    print_asciidoc_vertical(cont, fout);
   else
    print_asciidoc_text(cont, fout);
   break;
  case 132:
   if (cont->opt->expanded == 1)
    print_latex_vertical(cont, fout);
   else
    print_latex_text(cont, fout);
   break;
  case 131:
   if (cont->opt->expanded == 1)
    print_latex_vertical(cont, fout);
   else
    print_latex_longtable_text(cont, fout);
   break;
  case 130:
   if (cont->opt->expanded == 1)
    print_troff_ms_vertical(cont, fout);
   else
    print_troff_ms_text(cont, fout);
   break;
  default:
   fprintf(stderr, _("invalid output format (internal error): %d"),
     cont->opt->format);
   exit(EXIT_FAILURE);
 }

 if (is_local_pager)
  ClosePager(fout);
}
