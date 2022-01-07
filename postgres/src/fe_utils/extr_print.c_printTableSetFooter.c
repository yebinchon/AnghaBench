
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* footer; int * footers; } ;
typedef TYPE_2__ printTableContent ;
struct TYPE_5__ {int data; } ;


 int free (int ) ;
 int pg_strdup (char const*) ;
 int printTableAddFooter (TYPE_2__* const,char const*) ;

void
printTableSetFooter(printTableContent *const content, const char *footer)
{
 if (content->footers != ((void*)0))
 {
  free(content->footer->data);
  content->footer->data = pg_strdup(footer);
 }
 else
  printTableAddFooter(content, footer);
}
