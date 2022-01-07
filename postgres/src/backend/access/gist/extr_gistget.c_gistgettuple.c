
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_20__ {int firstCall; int curPageData; int nPageData; int numKilled; int curBlkno; TYPE_3__* pageData; int * killedItems; TYPE_2__* giststate; scalar_t__ pageDataCxt; int qual_ok; } ;
struct TYPE_15__ {int parentlsn; } ;
struct TYPE_19__ {int * distances; int blkno; TYPE_1__ data; } ;
struct TYPE_18__ {scalar_t__ numberOfOrderBys; scalar_t__ kill_prior_tuple; int * xs_hitup; scalar_t__ xs_want_itup; int xs_recheck; int xs_heaptid; int indexRelation; int opaque; } ;
struct TYPE_17__ {int offnum; int * recontup; int recheck; int heapPtr; } ;
struct TYPE_16__ {int scanCxt; } ;
typedef scalar_t__ ScanDirection ;
typedef int OffsetNumber ;
typedef int MemoryContext ;
typedef TYPE_4__* IndexScanDesc ;
typedef int GistNSN ;
typedef TYPE_5__ GISTSearchItem ;
typedef TYPE_6__* GISTScanOpaque ;


 int CHECK_FOR_INTERRUPTS () ;
 int ERROR ;
 scalar_t__ ForwardScanDirection ;
 int GIST_ROOT_BLKNO ;
 int InvalidBlockNumber ;
 int MaxIndexTuplesPerPage ;
 int MemoryContextReset (scalar_t__) ;
 int MemoryContextSwitchTo (int ) ;
 int elog (int ,char*) ;
 TYPE_5__* getNextGISTSearchItem (TYPE_6__*) ;
 int getNextNearest (TYPE_4__*) ;
 int gistScanPage (TYPE_4__*,TYPE_5__*,int *,int *,int *) ;
 int gistkillitems (TYPE_4__*) ;
 int memset (int *,int ,int) ;
 scalar_t__ palloc (int) ;
 int pfree (TYPE_5__*) ;
 int pgstat_count_index_scan (int ) ;

bool
gistgettuple(IndexScanDesc scan, ScanDirection dir)
{
 GISTScanOpaque so = (GISTScanOpaque) scan->opaque;

 if (dir != ForwardScanDirection)
  elog(ERROR, "GiST only supports forward scan direction");

 if (!so->qual_ok)
  return 0;

 if (so->firstCall)
 {

  GISTSearchItem fakeItem;

  pgstat_count_index_scan(scan->indexRelation);

  so->firstCall = 0;
  so->curPageData = so->nPageData = 0;
  scan->xs_hitup = ((void*)0);
  if (so->pageDataCxt)
   MemoryContextReset(so->pageDataCxt);

  fakeItem.blkno = GIST_ROOT_BLKNO;
  memset(&fakeItem.data.parentlsn, 0, sizeof(GistNSN));
  gistScanPage(scan, &fakeItem, ((void*)0), ((void*)0), ((void*)0));
 }

 if (scan->numberOfOrderBys > 0)
 {

  return getNextNearest(scan);
 }
 else
 {

  for (;;)
  {
   if (so->curPageData < so->nPageData)
   {
    if (scan->kill_prior_tuple && so->curPageData > 0)
    {

     if (so->killedItems == ((void*)0))
     {
      MemoryContext oldCxt =
      MemoryContextSwitchTo(so->giststate->scanCxt);

      so->killedItems =
       (OffsetNumber *) palloc(MaxIndexTuplesPerPage
             * sizeof(OffsetNumber));

      MemoryContextSwitchTo(oldCxt);
     }
     if (so->numKilled < MaxIndexTuplesPerPage)
      so->killedItems[so->numKilled++] =
       so->pageData[so->curPageData - 1].offnum;
    }

    scan->xs_heaptid = so->pageData[so->curPageData].heapPtr;
    scan->xs_recheck = so->pageData[so->curPageData].recheck;


    if (scan->xs_want_itup)
     scan->xs_hitup = so->pageData[so->curPageData].recontup;

    so->curPageData++;

    return 1;
   }





   if (scan->kill_prior_tuple
    && so->curPageData > 0
    && so->curPageData == so->nPageData)
   {

    if (so->killedItems == ((void*)0))
    {
     MemoryContext oldCxt =
     MemoryContextSwitchTo(so->giststate->scanCxt);

     so->killedItems =
      (OffsetNumber *) palloc(MaxIndexTuplesPerPage
            * sizeof(OffsetNumber));

     MemoryContextSwitchTo(oldCxt);
    }
    if (so->numKilled < MaxIndexTuplesPerPage)
     so->killedItems[so->numKilled++] =
      so->pageData[so->curPageData - 1].offnum;
   }

   do
   {
    GISTSearchItem *item;

    if ((so->curBlkno != InvalidBlockNumber) && (so->numKilled > 0))
     gistkillitems(scan);

    item = getNextGISTSearchItem(so);

    if (!item)
     return 0;

    CHECK_FOR_INTERRUPTS();


    so->curBlkno = item->blkno;







    gistScanPage(scan, item, item->distances, ((void*)0), ((void*)0));

    pfree(item);
   } while (so->nPageData == 0);
  }
 }
}
