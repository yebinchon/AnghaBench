
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ numberOfOrderBys; int nPtrs; int iPtr; scalar_t__* reconTups; scalar_t__ want_itup; scalar_t__* distances; scalar_t__ searchNonNulls; scalar_t__ searchNulls; int scanQueue; int traversalCxt; } ;
typedef TYPE_1__* SpGistScanOpaque ;
typedef int MemoryContext ;


 int MemoryContextReset (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int pairingheap_SpGistSearchItem_cmp ;
 int pairingheap_allocate (int ,TYPE_1__*) ;
 int pfree (scalar_t__) ;
 int spgAddStartItem (TYPE_1__*,int) ;

__attribute__((used)) static void
resetSpGistScanOpaque(SpGistScanOpaque so)
{
 MemoryContext oldCtx;

 MemoryContextReset(so->traversalCxt);

 oldCtx = MemoryContextSwitchTo(so->traversalCxt);


 so->scanQueue = pairingheap_allocate(pairingheap_SpGistSearchItem_cmp, so);

 if (so->searchNulls)

  spgAddStartItem(so, 1);

 if (so->searchNonNulls)

  spgAddStartItem(so, 0);

 MemoryContextSwitchTo(oldCtx);

 if (so->numberOfOrderBys > 0)
 {

  int i;

  for (i = 0; i < so->nPtrs; i++)
   if (so->distances[i])
    pfree(so->distances[i]);
 }

 if (so->want_itup)
 {

  int i;

  for (i = 0; i < so->nPtrs; i++)
   pfree(so->reconTups[i]);
 }
 so->iPtr = so->nPtrs = 0;
}
