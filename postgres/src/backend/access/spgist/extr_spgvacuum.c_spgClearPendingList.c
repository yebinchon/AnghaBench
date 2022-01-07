
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int done; struct TYPE_5__* next; } ;
typedef TYPE_1__ spgVacPendingItem ;
struct TYPE_6__ {TYPE_1__* pendingList; } ;
typedef TYPE_2__ spgBulkDeleteState ;


 int Assert (int ) ;
 int pfree (TYPE_1__*) ;

__attribute__((used)) static void
spgClearPendingList(spgBulkDeleteState *bds)
{
 spgVacPendingItem *pitem;
 spgVacPendingItem *nitem;

 for (pitem = bds->pendingList; pitem != ((void*)0); pitem = nitem)
 {
  nitem = pitem->next;

  Assert(pitem->done);
  pfree(pitem);
 }
 bds->pendingList = ((void*)0);
}
