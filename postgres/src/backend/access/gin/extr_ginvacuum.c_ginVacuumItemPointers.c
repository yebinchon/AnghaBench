
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* result; int callback_state; scalar_t__ (* callback ) (int *,int ) ;} ;
struct TYPE_4__ {int tuples_removed; int num_index_tuples; } ;
typedef int ItemPointerData ;
typedef int * ItemPointer ;
typedef TYPE_2__ GinVacuumState ;


 int memcpy (int *,int *,int) ;
 int * palloc (int) ;
 scalar_t__ stub1 (int *,int ) ;

ItemPointer
ginVacuumItemPointers(GinVacuumState *gvs, ItemPointerData *items,
       int nitem, int *nremaining)
{
 int i,
    remaining = 0;
 ItemPointer tmpitems = ((void*)0);




 for (i = 0; i < nitem; i++)
 {
  if (gvs->callback(items + i, gvs->callback_state))
  {
   gvs->result->tuples_removed += 1;
   if (!tmpitems)
   {




    tmpitems = palloc(sizeof(ItemPointerData) * nitem);
    memcpy(tmpitems, items, sizeof(ItemPointerData) * i);
   }
  }
  else
  {
   gvs->result->num_index_tuples += 1;
   if (tmpitems)
    tmpitems[remaining] = items[i];
   remaining++;
  }
 }

 *nremaining = remaining;
 return tmpitems;
}
