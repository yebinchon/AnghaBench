
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int printTableOpt ;
struct TYPE_3__ {char const* title; int ncolumns; int nrows; scalar_t__ cellsadded; void* aligns; void* align; int * footers; int * footer; void* cells; void* cell; void* headers; void* header; int * cellmustfree; int const* opt; } ;
typedef TYPE_1__ printTableContent ;


 void* pg_malloc0 (int const) ;

void
printTableInit(printTableContent *const content, const printTableOpt *opt,
      const char *title, const int ncolumns, const int nrows)
{
 content->opt = opt;
 content->title = title;
 content->ncolumns = ncolumns;
 content->nrows = nrows;

 content->headers = pg_malloc0((ncolumns + 1) * sizeof(*content->headers));

 content->cells = pg_malloc0((ncolumns * nrows + 1) * sizeof(*content->cells));

 content->cellmustfree = ((void*)0);
 content->footers = ((void*)0);

 content->aligns = pg_malloc0((ncolumns + 1) * sizeof(*content->align));

 content->header = content->headers;
 content->cell = content->cells;
 content->footer = content->footers;
 content->align = content->aligns;
 content->cellsadded = 0;
}
