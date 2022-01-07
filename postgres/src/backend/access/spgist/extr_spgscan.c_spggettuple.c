
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int xs_snapshot; int indexRelation; scalar_t__ xs_hitup; int xs_recheck; int xs_heaptid; scalar_t__ xs_want_itup; int opaque; } ;
struct TYPE_6__ {size_t iPtr; size_t nPtrs; scalar_t__ numberOfOrderBys; scalar_t__* reconTups; scalar_t__ want_itup; scalar_t__* distances; int * recheckDistances; int orderByTypes; int * recheck; int * heapPtrs; } ;
typedef TYPE_1__* SpGistScanOpaque ;
typedef scalar_t__ ScanDirection ;
typedef TYPE_2__* IndexScanDesc ;


 int ERROR ;
 scalar_t__ ForwardScanDirection ;
 int elog (int ,char*) ;
 int index_store_float8_orderby_distances (TYPE_2__*,int ,scalar_t__,int ) ;
 int pfree (scalar_t__) ;
 int spgWalk (int ,TYPE_1__*,int,int ,int ) ;
 int storeGettuple ;

bool
spggettuple(IndexScanDesc scan, ScanDirection dir)
{
 SpGistScanOpaque so = (SpGistScanOpaque) scan->opaque;

 if (dir != ForwardScanDirection)
  elog(ERROR, "SP-GiST only supports forward scan direction");


 so->want_itup = scan->xs_want_itup;

 for (;;)
 {
  if (so->iPtr < so->nPtrs)
  {

   scan->xs_heaptid = so->heapPtrs[so->iPtr];
   scan->xs_recheck = so->recheck[so->iPtr];
   scan->xs_hitup = so->reconTups[so->iPtr];

   if (so->numberOfOrderBys > 0)
    index_store_float8_orderby_distances(scan, so->orderByTypes,
              so->distances[so->iPtr],
              so->recheckDistances[so->iPtr]);
   so->iPtr++;
   return 1;
  }

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

  spgWalk(scan->indexRelation, so, 0, storeGettuple,
    scan->xs_snapshot);

  if (so->nPtrs == 0)
   break;
 }

 return 0;
}
