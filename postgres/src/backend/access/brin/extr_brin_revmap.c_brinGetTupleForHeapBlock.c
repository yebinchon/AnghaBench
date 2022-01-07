
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ rm_pagesPerRange; void* rm_currBuf; int rm_irel; } ;
struct TYPE_8__ {scalar_t__ bt_blkno; } ;
struct TYPE_7__ {int * rm_tids; } ;
typedef int Snapshot ;
typedef int Size ;
typedef TYPE_1__ RevmapContents ;
typedef int Relation ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemPointerData ;
typedef int ItemId ;
typedef void* Buffer ;
typedef TYPE_2__ BrinTuple ;
typedef TYPE_3__ BrinRevmap ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 scalar_t__ BRIN_IS_REGULAR_PAGE (int ) ;
 int BUFFER_LOCK_SHARE ;
 int BUFFER_LOCK_UNLOCK ;
 scalar_t__ BufferGetBlockNumber (void*) ;
 int BufferGetPage (void*) ;
 scalar_t__ BufferIsValid (void*) ;
 int CHECK_FOR_INTERRUPTS () ;
 int ERRCODE_INDEX_CORRUPTED ;
 int ERROR ;
 int HEAPBLK_TO_REVMAP_INDEX (scalar_t__,scalar_t__) ;
 scalar_t__ InvalidBlockNumber ;
 void* InvalidBuffer ;
 scalar_t__ InvalidOffsetNumber ;
 int ItemIdGetLength (int ) ;
 scalar_t__ ItemIdIsUsed (int ) ;
 scalar_t__ ItemPointerEquals (int *,int *) ;
 scalar_t__ ItemPointerGetBlockNumber (int *) ;
 scalar_t__ ItemPointerGetOffsetNumber (int *) ;
 scalar_t__ ItemPointerIsValid (int *) ;
 int ItemPointerSetInvalid (int *) ;
 int LockBuffer (void*,int) ;
 scalar_t__ PageGetContents (int ) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 void* ReadBuffer (int ,scalar_t__) ;
 int ReleaseBuffer (void*) ;
 int TestForOldSnapshot (int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg_internal (char*) ;
 scalar_t__ revmap_get_blkno (TYPE_3__*,scalar_t__) ;

BrinTuple *
brinGetTupleForHeapBlock(BrinRevmap *revmap, BlockNumber heapBlk,
       Buffer *buf, OffsetNumber *off, Size *size, int mode,
       Snapshot snapshot)
{
 Relation idxRel = revmap->rm_irel;
 BlockNumber mapBlk;
 RevmapContents *contents;
 ItemPointerData *iptr;
 BlockNumber blk;
 Page page;
 ItemId lp;
 BrinTuple *tup;
 ItemPointerData previptr;


 heapBlk = (heapBlk / revmap->rm_pagesPerRange) * revmap->rm_pagesPerRange;






 mapBlk = revmap_get_blkno(revmap, heapBlk);
 if (mapBlk == InvalidBlockNumber)
 {
  *off = InvalidOffsetNumber;
  return ((void*)0);
 }

 ItemPointerSetInvalid(&previptr);
 for (;;)
 {
  CHECK_FOR_INTERRUPTS();

  if (revmap->rm_currBuf == InvalidBuffer ||
   BufferGetBlockNumber(revmap->rm_currBuf) != mapBlk)
  {
   if (revmap->rm_currBuf != InvalidBuffer)
    ReleaseBuffer(revmap->rm_currBuf);

   Assert(mapBlk != InvalidBlockNumber);
   revmap->rm_currBuf = ReadBuffer(revmap->rm_irel, mapBlk);
  }

  LockBuffer(revmap->rm_currBuf, BUFFER_LOCK_SHARE);

  contents = (RevmapContents *)
   PageGetContents(BufferGetPage(revmap->rm_currBuf));
  iptr = contents->rm_tids;
  iptr += HEAPBLK_TO_REVMAP_INDEX(revmap->rm_pagesPerRange, heapBlk);

  if (!ItemPointerIsValid(iptr))
  {
   LockBuffer(revmap->rm_currBuf, BUFFER_LOCK_UNLOCK);
   return ((void*)0);
  }







  if (ItemPointerIsValid(&previptr) && ItemPointerEquals(&previptr, iptr))
   ereport(ERROR,
     (errcode(ERRCODE_INDEX_CORRUPTED),
      errmsg_internal("corrupted BRIN index: inconsistent range map")));
  previptr = *iptr;

  blk = ItemPointerGetBlockNumber(iptr);
  *off = ItemPointerGetOffsetNumber(iptr);

  LockBuffer(revmap->rm_currBuf, BUFFER_LOCK_UNLOCK);


  if (!BufferIsValid(*buf) || BufferGetBlockNumber(*buf) != blk)
  {
   if (BufferIsValid(*buf))
    ReleaseBuffer(*buf);
   *buf = ReadBuffer(idxRel, blk);
  }
  LockBuffer(*buf, mode);
  page = BufferGetPage(*buf);
  TestForOldSnapshot(snapshot, idxRel, page);


  if (BRIN_IS_REGULAR_PAGE(page))
  {
   if (*off > PageGetMaxOffsetNumber(page))
    ereport(ERROR,
      (errcode(ERRCODE_INDEX_CORRUPTED),
       errmsg_internal("corrupted BRIN index: inconsistent range map")));
   lp = PageGetItemId(page, *off);
   if (ItemIdIsUsed(lp))
   {
    tup = (BrinTuple *) PageGetItem(page, lp);

    if (tup->bt_blkno == heapBlk)
    {
     if (size)
      *size = ItemIdGetLength(lp);

     return tup;
    }
   }
  }




  LockBuffer(*buf, BUFFER_LOCK_UNLOCK);
 }

 return ((void*)0);
}
