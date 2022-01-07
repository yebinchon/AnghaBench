
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int ncolumns; char* aligns; char** headers; char const* const title; char** cells; TYPE_1__* opt; } ;
typedef TYPE_2__ printTableContent ;
struct TYPE_4__ {int tuples_only; unsigned short border; char* tableAttr; scalar_t__ stop_table; scalar_t__ start_table; } ;
typedef int FILE ;


 int LONGTABLE_WHITESPACE ;
 scalar_t__ cancel_pressed ;
 int fputc (char,int *) ;
 int fputs (char*,int *) ;
 int fwrite (char const*,int ,int,int *) ;
 int latex_escaped_print (char const* const,int *) ;
 int strcspn (char const*,int ) ;
 int strspn (char const*,int ) ;

__attribute__((used)) static void
print_latex_longtable_text(const printTableContent *cont, FILE *fout)
{
 bool opt_tuples_only = cont->opt->tuples_only;
 unsigned short opt_border = cont->opt->border;
 unsigned int i;
 const char *opt_table_attr = cont->opt->tableAttr;
 const char *next_opt_table_attr_char = opt_table_attr;
 const char *last_opt_table_attr_char = ((void*)0);
 const char *const *ptr;

 if (cancel_pressed)
  return;

 if (opt_border > 3)
  opt_border = 3;

 if (cont->opt->start_table)
 {

  fputs("\\begin{longtable}{", fout);

  if (opt_border >= 2)
   fputs("| ", fout);

  for (i = 0; i < cont->ncolumns; i++)
  {


   if (*(cont->aligns + i) == 'l' && opt_table_attr)
   {



    next_opt_table_attr_char += strspn(next_opt_table_attr_char,
               " \t\n");

    if (next_opt_table_attr_char[0] != '\0')
    {
     fputs("p{", fout);
     fwrite(next_opt_table_attr_char, strcspn(next_opt_table_attr_char,
                " \t\n"), 1, fout);
     last_opt_table_attr_char = next_opt_table_attr_char;
     next_opt_table_attr_char += strcspn(next_opt_table_attr_char,
              " \t\n");
     fputs("\\textwidth}", fout);
    }

    else if (last_opt_table_attr_char != ((void*)0))
    {
     fputs("p{", fout);
     fwrite(last_opt_table_attr_char, strcspn(last_opt_table_attr_char,
                " \t\n"), 1, fout);
     fputs("\\textwidth}", fout);
    }
    else
     fputc('l', fout);
   }
   else
    fputc(*(cont->aligns + i), fout);

   if (opt_border != 0 && i < cont->ncolumns - 1)
    fputs(" | ", fout);
  }

  if (opt_border >= 2)
   fputs(" |", fout);

  fputs("}\n", fout);


  if (!opt_tuples_only)
  {

   if (opt_border >= 2)
    fputs("\\toprule\n", fout);
   for (i = 0, ptr = cont->headers; i < cont->ncolumns; i++, ptr++)
   {
    if (i != 0)
     fputs(" & ", fout);
    fputs("\\small\\textbf{\\textit{", fout);
    latex_escaped_print(*ptr, fout);
    fputs("}}", fout);
   }
   fputs(" \\\\\n", fout);
   fputs("\\midrule\n\\endfirsthead\n", fout);


   if (opt_border >= 2)
    fputs("\\toprule\n", fout);
   for (i = 0, ptr = cont->headers; i < cont->ncolumns; i++, ptr++)
   {
    if (i != 0)
     fputs(" & ", fout);
    fputs("\\small\\textbf{\\textit{", fout);
    latex_escaped_print(*ptr, fout);
    fputs("}}", fout);
   }
   fputs(" \\\\\n", fout);

   if (opt_border != 3)
    fputs("\\midrule\n", fout);
   fputs("\\endhead\n", fout);


   if (!opt_tuples_only && cont->title)
   {

    if (opt_border == 2)
     fputs("\\bottomrule\n", fout);
    fputs("\\caption[", fout);
    latex_escaped_print(cont->title, fout);
    fputs(" (Continued)]{", fout);
    latex_escaped_print(cont->title, fout);
    fputs("}\n\\endfoot\n", fout);
    if (opt_border == 2)
     fputs("\\bottomrule\n", fout);
    fputs("\\caption[", fout);
    latex_escaped_print(cont->title, fout);
    fputs("]{", fout);
    latex_escaped_print(cont->title, fout);
    fputs("}\n\\endlastfoot\n", fout);
   }

   else if (opt_border >= 2)
   {
    fputs("\\bottomrule\n\\endfoot\n", fout);
    fputs("\\bottomrule\n\\endlastfoot\n", fout);
   }
  }
 }


 for (i = 0, ptr = cont->cells; *ptr; i++, ptr++)
 {

  if (i != 0 && i % cont->ncolumns != 0)
   fputs("\n&\n", fout);
  fputs("\\raggedright{", fout);
  latex_escaped_print(*ptr, fout);
  fputc('}', fout);
  if ((i + 1) % cont->ncolumns == 0)
  {
   fputs(" \\tabularnewline\n", fout);
   if (opt_border == 3)
    fputs(" \\hline\n", fout);
  }
  if (cancel_pressed)
   break;
 }

 if (cont->opt->stop_table)
  fputs("\\end{longtable}\n", fout);
}
