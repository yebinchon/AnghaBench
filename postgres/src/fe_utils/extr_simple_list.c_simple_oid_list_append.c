
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* tail; TYPE_1__* head; } ;
struct TYPE_4__ {struct TYPE_4__* next; int val; } ;
typedef TYPE_1__ SimpleOidListCell ;
typedef TYPE_2__ SimpleOidList ;
typedef int Oid ;


 scalar_t__ pg_malloc (int) ;

void
simple_oid_list_append(SimpleOidList *list, Oid val)
{
 SimpleOidListCell *cell;

 cell = (SimpleOidListCell *) pg_malloc(sizeof(SimpleOidListCell));
 cell->next = ((void*)0);
 cell->val = val;

 if (list->tail)
  list->tail->next = cell;
 else
  list->head = cell;
 list->tail = cell;
}
