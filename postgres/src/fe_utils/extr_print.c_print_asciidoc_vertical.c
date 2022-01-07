
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* data; struct TYPE_6__* next; } ;
typedef TYPE_2__ printTableFooter ;
struct TYPE_7__ {char* title; char** cells; unsigned int ncolumns; char const* const* headers; char* aligns; TYPE_2__* footers; TYPE_1__* opt; } ;
typedef TYPE_3__ printTableContent ;
struct TYPE_5__ {int tuples_only; unsigned short border; int prior_records; scalar_t__ stop_table; scalar_t__ start_table; } ;
typedef int FILE ;


 int asciidoc_escaped_print (char const* const,int *) ;
 scalar_t__ cancel_pressed ;
 int fprintf (int *,char*,char*) ;
 int fputs (char*,int *) ;
 size_t strspn (char const* const,char*) ;

__attribute__((used)) static void
print_asciidoc_vertical(const printTableContent *cont, FILE *fout)
{
 bool opt_tuples_only = cont->opt->tuples_only;
 unsigned short opt_border = cont->opt->border;
 unsigned long record = cont->opt->prior_records + 1;
 unsigned int i;
 const char *const *ptr;

 if (cancel_pressed)
  return;

 if (cont->opt->start_table)
 {

  fputs("\n", fout);


  if (!opt_tuples_only && cont->title)
  {
   fputs(".", fout);
   fputs(cont->title, fout);
   fputs("\n", fout);
  }


  fputs("[cols=\"h,l\"", fout);
  switch (opt_border)
  {
   case 0:
    fputs(",frame=\"none\",grid=\"none\"", fout);
    break;
   case 1:
    fputs(",frame=\"none\"", fout);
    break;
   case 2:
    fputs(",frame=\"all\",grid=\"all\"", fout);
    break;
  }
  fputs("]\n", fout);
  fputs("|====\n", fout);
 }


 for (i = 0, ptr = cont->cells; *ptr; i++, ptr++)
 {
  if (i % cont->ncolumns == 0)
  {
   if (cancel_pressed)
    break;
   if (!opt_tuples_only)
    fprintf(fout,
      "2+^|Record %lu\n",
      record++);
   else
    fputs("2+|\n", fout);
  }

  fputs("<l|", fout);
  asciidoc_escaped_print(cont->headers[i % cont->ncolumns], fout);

  fprintf(fout, " %s|", cont->aligns[i % cont->ncolumns] == 'r' ? ">l" : "<l");

  if ((*ptr)[strspn(*ptr, " \t")] == '\0')
   fputs(" ", fout);
  else
   asciidoc_escaped_print(*ptr, fout);
  fputs("\n", fout);
 }

 fputs("|====\n", fout);

 if (cont->opt->stop_table)
 {

  if (!opt_tuples_only && cont->footers != ((void*)0) && !cancel_pressed)
  {
   printTableFooter *f;

   fputs("\n....\n", fout);
   for (f = cont->footers; f; f = f->next)
   {
    fputs(f->data, fout);
    fputs("\n", fout);
   }
   fputs("....\n", fout);
  }
 }
}
