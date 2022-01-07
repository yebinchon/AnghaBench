
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ offnum; void* pagesPerRange; void* heapBlk; } ;
typedef TYPE_1__ xl_brin_insert ;
typedef int uint8 ;
typedef int XLogRecPtr ;
typedef int Size ;
typedef int Relation ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemPointerData ;
typedef int Item ;
typedef int Buffer ;
typedef int BrinTuple ;
typedef int BrinRevmap ;
typedef void* BlockNumber ;


 int Assert (int) ;
 int BRIN_PAGETYPE_REGULAR ;
 int BRIN_elog (int ) ;
 int BUFFER_LOCK_EXCLUSIVE ;
 int BUFFER_LOCK_UNLOCK ;
 int BrinMaxItemSize ;
 void* BufferGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int DEBUG2 ;
 int END_CRIT_SECTION () ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int FreeSpaceMapVacuumRange (int ,void*,void*) ;
 int InvalidBuffer ;
 scalar_t__ InvalidOffsetNumber ;
 int ItemPointerSet (int *,void*,scalar_t__) ;
 int LockBuffer (int ,int ) ;
 int MAXALIGN (int ) ;
 int MarkBufferDirty (int ) ;
 scalar_t__ PageAddItem (int ,int ,int ,scalar_t__,int,int) ;
 int PageSetLSN (int ,int ) ;
 int REGBUF_STANDARD ;
 int REGBUF_WILL_INIT ;
 int RM_BRIN_ID ;
 int RecordPageWithFreeSpace (int ,void*,int ) ;
 int RelationGetRelationName (int ) ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int START_CRIT_SECTION () ;
 int SizeOfBrinInsert ;
 int UnlockReleaseBuffer (int ) ;
 int XLOG_BRIN_INIT_PAGE ;
 int XLOG_BRIN_INSERT ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int) ;
 int XLogRegisterBufData (int ,char*,int ) ;
 int XLogRegisterBuffer (int,int ,int) ;
 int XLogRegisterData (char*,int ) ;
 int br_page_get_freespace (int ) ;
 int brinLockRevmapPageForUpdate (int *,void*) ;
 int brinRevmapExtend (int *,void*) ;
 int brinSetHeapBlockItemptr (int ,void*,void*,int ) ;
 int brin_getinsertbuffer (int ,int ,int ,int*) ;
 int brin_page_init (int ,int ) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,int ,int ) ;

OffsetNumber
brin_doinsert(Relation idxrel, BlockNumber pagesPerRange,
     BrinRevmap *revmap, Buffer *buffer, BlockNumber heapBlk,
     BrinTuple *tup, Size itemsz)
{
 Page page;
 BlockNumber blk;
 OffsetNumber off;
 Size freespace = 0;
 Buffer revmapbuf;
 ItemPointerData tid;
 bool extended;

 Assert(itemsz == MAXALIGN(itemsz));


 if (itemsz > BrinMaxItemSize)
 {
  ereport(ERROR,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg("index row size %zu exceeds maximum %zu for index \"%s\"",
      itemsz, BrinMaxItemSize, RelationGetRelationName(idxrel))));
  return InvalidOffsetNumber;
 }


 brinRevmapExtend(revmap, heapBlk);





 if (BufferIsValid(*buffer))
 {





  LockBuffer(*buffer, BUFFER_LOCK_EXCLUSIVE);
  if (br_page_get_freespace(BufferGetPage(*buffer)) < itemsz)
  {
   UnlockReleaseBuffer(*buffer);
   *buffer = InvalidBuffer;
  }
 }





 if (!BufferIsValid(*buffer))
 {
  do
   *buffer = brin_getinsertbuffer(idxrel, InvalidBuffer, itemsz, &extended);
  while (!BufferIsValid(*buffer));
 }
 else
  extended = 0;


 revmapbuf = brinLockRevmapPageForUpdate(revmap, heapBlk);

 page = BufferGetPage(*buffer);
 blk = BufferGetBlockNumber(*buffer);


 START_CRIT_SECTION();
 if (extended)
  brin_page_init(page, BRIN_PAGETYPE_REGULAR);
 off = PageAddItem(page, (Item) tup, itemsz, InvalidOffsetNumber,
       0, 0);
 if (off == InvalidOffsetNumber)
  elog(ERROR, "failed to add BRIN tuple to new page");
 MarkBufferDirty(*buffer);


 if (extended)
  freespace = br_page_get_freespace(page);

 ItemPointerSet(&tid, blk, off);
 brinSetHeapBlockItemptr(revmapbuf, pagesPerRange, heapBlk, tid);
 MarkBufferDirty(revmapbuf);


 if (RelationNeedsWAL(idxrel))
 {
  xl_brin_insert xlrec;
  XLogRecPtr recptr;
  uint8 info;

  info = XLOG_BRIN_INSERT | (extended ? XLOG_BRIN_INIT_PAGE : 0);
  xlrec.heapBlk = heapBlk;
  xlrec.pagesPerRange = pagesPerRange;
  xlrec.offnum = off;

  XLogBeginInsert();
  XLogRegisterData((char *) &xlrec, SizeOfBrinInsert);

  XLogRegisterBuffer(0, *buffer, REGBUF_STANDARD | (extended ? REGBUF_WILL_INIT : 0));
  XLogRegisterBufData(0, (char *) tup, itemsz);

  XLogRegisterBuffer(1, revmapbuf, 0);

  recptr = XLogInsert(RM_BRIN_ID, info);

  PageSetLSN(page, recptr);
  PageSetLSN(BufferGetPage(revmapbuf), recptr);
 }

 END_CRIT_SECTION();


 LockBuffer(*buffer, BUFFER_LOCK_UNLOCK);
 LockBuffer(revmapbuf, BUFFER_LOCK_UNLOCK);

 BRIN_elog((DEBUG2, "inserted tuple (%u,%u) for range starting at %u",
      blk, off, heapBlk));

 if (extended)
 {
  RecordPageWithFreeSpace(idxrel, blk, freespace);
  FreeSpaceMapVacuumRange(idxrel, blk, blk + 1);
 }

 return off;
}
