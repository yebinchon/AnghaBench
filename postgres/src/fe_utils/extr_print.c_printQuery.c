
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int ncolumns; int nrows; char* aligns; } ;
typedef TYPE_1__ printTableContent ;
struct TYPE_13__ {scalar_t__ numericLocale; } ;
struct TYPE_12__ {int n_translate_columns; char* nullPrint; char** footers; scalar_t__* translate_columns; TYPE_4__ topt; int translate_header; int title; } ;
typedef TYPE_2__ printQueryOpt ;
typedef int PGresult ;
typedef int FILE ;


 int Assert (int) ;
 int PQfname (int const*,int) ;
 int PQftype (int const*,int) ;
 scalar_t__ PQgetisnull (int const*,int,int) ;
 char* PQgetvalue (int const*,int,int) ;
 int PQnfields (int const*) ;
 int PQntuples (int const*) ;
 scalar_t__ cancel_pressed ;
 int column_type_alignment (int ) ;
 char* format_numeric_locale (char*) ;
 int printTable (TYPE_1__*,int *,int,int *) ;
 int printTableAddCell (TYPE_1__*,char*,int,int) ;
 int printTableAddFooter (TYPE_1__*,char*) ;
 int printTableAddHeader (TYPE_1__*,int ,int ,int ) ;
 int printTableCleanup (TYPE_1__*) ;
 int printTableInit (TYPE_1__*,TYPE_4__*,int ,int ,int ) ;

void
printQuery(const PGresult *result, const printQueryOpt *opt,
     FILE *fout, bool is_pager, FILE *flog)
{
 printTableContent cont;
 int i,
    r,
    c;

 if (cancel_pressed)
  return;

 printTableInit(&cont, &opt->topt, opt->title,
       PQnfields(result), PQntuples(result));


 Assert(opt->translate_columns == ((void*)0) ||
     opt->n_translate_columns >= cont.ncolumns);

 for (i = 0; i < cont.ncolumns; i++)
 {
  printTableAddHeader(&cont, PQfname(result, i),
       opt->translate_header,
       column_type_alignment(PQftype(result, i)));
 }


 for (r = 0; r < cont.nrows; r++)
 {
  for (c = 0; c < cont.ncolumns; c++)
  {
   char *cell;
   bool mustfree = 0;
   bool translate;

   if (PQgetisnull(result, r, c))
    cell = opt->nullPrint ? opt->nullPrint : "";
   else
   {
    cell = PQgetvalue(result, r, c);
    if (cont.aligns[c] == 'r' && opt->topt.numericLocale)
    {
     cell = format_numeric_locale(cell);
     mustfree = 1;
    }
   }

   translate = (opt->translate_columns && opt->translate_columns[c]);
   printTableAddCell(&cont, cell, translate, mustfree);
  }
 }


 if (opt->footers)
 {
  char **footer;

  for (footer = opt->footers; *footer; footer++)
   printTableAddFooter(&cont, *footer);
 }

 printTable(&cont, fout, is_pager, flog);
 printTableCleanup(&cont);
}
