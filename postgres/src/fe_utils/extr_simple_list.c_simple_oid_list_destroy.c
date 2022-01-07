
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* head; } ;
struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ SimpleOidListCell ;
typedef TYPE_2__ SimpleOidList ;


 int pg_free (TYPE_1__*) ;

void
simple_oid_list_destroy(SimpleOidList *list)
{
 SimpleOidListCell *cell;

 cell = list->head;
 while (cell != ((void*)0))
 {
  SimpleOidListCell *next;

  next = cell->next;
  pg_free(cell);
  cell = next;
 }
}
