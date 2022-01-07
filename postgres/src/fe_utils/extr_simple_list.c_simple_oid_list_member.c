
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* head; } ;
struct TYPE_4__ {scalar_t__ val; struct TYPE_4__* next; } ;
typedef TYPE_1__ SimpleOidListCell ;
typedef TYPE_2__ SimpleOidList ;
typedef scalar_t__ Oid ;



bool
simple_oid_list_member(SimpleOidList *list, Oid val)
{
 SimpleOidListCell *cell;

 for (cell = list->head; cell; cell = cell->next)
 {
  if (cell->val == val)
   return 1;
 }
 return 0;
}
