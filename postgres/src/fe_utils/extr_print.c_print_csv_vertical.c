
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char** cells; char const* const* headers; int ncolumns; TYPE_1__* opt; } ;
typedef TYPE_2__ printTableContent ;
struct TYPE_4__ {char* csvFieldSep; } ;
typedef int FILE ;


 scalar_t__ cancel_pressed ;
 int csv_print_field (char const* const,int *,char) ;
 int fputc (char,int *) ;

__attribute__((used)) static void
print_csv_vertical(const printTableContent *cont, FILE *fout)
{
 const char *const *ptr;
 int i;


 for (i = 0, ptr = cont->cells; *ptr; i++, ptr++)
 {
  if (cancel_pressed)
   return;


  csv_print_field(cont->headers[i % cont->ncolumns], fout,
      cont->opt->csvFieldSep[0]);


  fputc(cont->opt->csvFieldSep[0], fout);


  csv_print_field(*ptr, fout, cont->opt->csvFieldSep[0]);

  fputc('\n', fout);
 }
}
