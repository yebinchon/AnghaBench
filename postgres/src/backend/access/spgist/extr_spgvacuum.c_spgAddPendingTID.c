
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int done; struct TYPE_4__* next; int tid; } ;
typedef TYPE_1__ spgVacPendingItem ;
struct TYPE_5__ {TYPE_1__* pendingList; } ;
typedef TYPE_2__ spgBulkDeleteState ;
typedef int * ItemPointer ;


 scalar_t__ ItemPointerEquals (int *,int *) ;
 scalar_t__ palloc (int) ;

__attribute__((used)) static void
spgAddPendingTID(spgBulkDeleteState *bds, ItemPointer tid)
{
 spgVacPendingItem *pitem;
 spgVacPendingItem **listLink;


 listLink = &bds->pendingList;
 while (*listLink != ((void*)0))
 {
  pitem = *listLink;
  if (ItemPointerEquals(tid, &pitem->tid))
   return;
  listLink = &pitem->next;
 }

 pitem = (spgVacPendingItem *) palloc(sizeof(spgVacPendingItem));
 pitem->tid = *tid;
 pitem->done = 0;
 pitem->next = ((void*)0);
 *listLink = pitem;
}
