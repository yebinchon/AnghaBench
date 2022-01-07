
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; int data; } ;
typedef TYPE_1__ printTableFooter ;
struct TYPE_6__ {TYPE_1__* footer; TYPE_1__* footers; } ;
typedef TYPE_2__ printTableContent ;


 TYPE_1__* pg_malloc0 (int) ;
 int pg_strdup (char const*) ;

void
printTableAddFooter(printTableContent *const content, const char *footer)
{
 printTableFooter *f;

 f = pg_malloc0(sizeof(*f));
 f->data = pg_strdup(footer);

 if (content->footers == ((void*)0))
  content->footers = f;
 else
  content->footer->next = f;

 content->footer = f;
}
