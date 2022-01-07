
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int (* storeRes_func ) (TYPE_1__*,int *,int ,int ,int ,int ,int ) ;
struct TYPE_21__ {int pointer; } ;
struct TYPE_20__ {scalar_t__ tupstate; } ;
struct TYPE_19__ {int heapPtr; int distances; int recheckDistances; int recheck; int isNull; int value; scalar_t__ isLeaf; } ;
struct TYPE_18__ {scalar_t__ numberOfNonNullOrderBys; int tempCxt; } ;
typedef TYPE_2__ SpGistSearchItem ;
typedef TYPE_1__* SpGistScanOpaque ;
typedef TYPE_4__* SpGistInnerTuple ;
typedef TYPE_5__* SpGistDeadTuple ;
typedef int Snapshot ;
typedef int Relation ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef scalar_t__ Buffer ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 int BUFFER_LOCK_SHARE ;
 scalar_t__ BufferGetBlockNumber (scalar_t__) ;
 int BufferGetPage (scalar_t__) ;
 int CHECK_FOR_INTERRUPTS () ;
 int ERROR ;
 scalar_t__ FirstOffsetNumber ;
 scalar_t__ InvalidBuffer ;
 scalar_t__ InvalidOffsetNumber ;
 scalar_t__ ItemPointerGetBlockNumber (int *) ;
 scalar_t__ ItemPointerGetOffsetNumber (int *) ;
 int LockBuffer (scalar_t__,int ) ;
 int MemoryContextReset (int ) ;
 int PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 scalar_t__ ReadBuffer (int ,scalar_t__) ;
 scalar_t__ SPGIST_LIVE ;
 scalar_t__ SPGIST_METAPAGE_BLKNO ;
 scalar_t__ SPGIST_REDIRECT ;
 scalar_t__ SpGistBlockIsRoot (scalar_t__) ;
 scalar_t__ SpGistPageIsLeaf (int ) ;
 scalar_t__ SpGistPageStoresNulls (int ) ;
 scalar_t__ SpGistRedirectOffsetNumber ;
 int TestForOldSnapshot (int ,int ,int ) ;
 int UnlockReleaseBuffer (scalar_t__) ;
 int elog (int ,char*,scalar_t__) ;
 int spgFreeSearchItem (TYPE_1__*,TYPE_2__*) ;
 TYPE_2__* spgGetNextQueueItem (TYPE_1__*) ;
 int spgInnerTest (TYPE_1__*,TYPE_2__*,TYPE_4__*,int) ;
 scalar_t__ spgTestLeafTuple (TYPE_1__*,TYPE_2__*,int ,scalar_t__,int,int,int*,int (*) (TYPE_1__*,int *,int ,int ,int ,int ,int )) ;

__attribute__((used)) static void
spgWalk(Relation index, SpGistScanOpaque so, bool scanWholeIndex,
  storeRes_func storeRes, Snapshot snapshot)
{
 Buffer buffer = InvalidBuffer;
 bool reportedSome = 0;

 while (scanWholeIndex || !reportedSome)
 {
  SpGistSearchItem *item = spgGetNextQueueItem(so);

  if (item == ((void*)0))
   break;

redirect:

  CHECK_FOR_INTERRUPTS();

  if (item->isLeaf)
  {

   Assert(so->numberOfNonNullOrderBys > 0);
   storeRes(so, &item->heapPtr, item->value, item->isNull,
      item->recheck, item->recheckDistances, item->distances);
   reportedSome = 1;
  }
  else
  {
   BlockNumber blkno = ItemPointerGetBlockNumber(&item->heapPtr);
   OffsetNumber offset = ItemPointerGetOffsetNumber(&item->heapPtr);
   Page page;
   bool isnull;

   if (buffer == InvalidBuffer)
   {
    buffer = ReadBuffer(index, blkno);
    LockBuffer(buffer, BUFFER_LOCK_SHARE);
   }
   else if (blkno != BufferGetBlockNumber(buffer))
   {
    UnlockReleaseBuffer(buffer);
    buffer = ReadBuffer(index, blkno);
    LockBuffer(buffer, BUFFER_LOCK_SHARE);
   }



   page = BufferGetPage(buffer);
   TestForOldSnapshot(snapshot, index, page);

   isnull = SpGistPageStoresNulls(page) ? 1 : 0;

   if (SpGistPageIsLeaf(page))
   {

    OffsetNumber max = PageGetMaxOffsetNumber(page);

    if (SpGistBlockIsRoot(blkno))
    {

     for (offset = FirstOffsetNumber; offset <= max; offset++)
      (void) spgTestLeafTuple(so, item, page, offset,
            isnull, 1,
            &reportedSome, storeRes);
    }
    else
    {

     while (offset != InvalidOffsetNumber)
     {
      Assert(offset >= FirstOffsetNumber && offset <= max);
      offset = spgTestLeafTuple(so, item, page, offset,
              isnull, 0,
              &reportedSome, storeRes);
      if (offset == SpGistRedirectOffsetNumber)
       goto redirect;
     }
    }
   }
   else
   {
    SpGistInnerTuple innerTuple = (SpGistInnerTuple)
    PageGetItem(page, PageGetItemId(page, offset));

    if (innerTuple->tupstate != SPGIST_LIVE)
    {
     if (innerTuple->tupstate == SPGIST_REDIRECT)
     {

      item->heapPtr = ((SpGistDeadTuple) innerTuple)->pointer;
      Assert(ItemPointerGetBlockNumber(&item->heapPtr) !=
          SPGIST_METAPAGE_BLKNO);
      goto redirect;
     }
     elog(ERROR, "unexpected SPGiST tuple state: %d",
       innerTuple->tupstate);
    }

    spgInnerTest(so, item, innerTuple, isnull);
   }
  }


  spgFreeSearchItem(so, item);

  MemoryContextReset(so->tempCxt);
 }

 if (buffer != InvalidBuffer)
  UnlockReleaseBuffer(buffer);
}
