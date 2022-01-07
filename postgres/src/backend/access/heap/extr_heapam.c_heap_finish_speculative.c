
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* offnum; } ;
typedef TYPE_1__ xl_heap_confirm ;
typedef int XLogRecPtr ;
struct TYPE_5__ {int t_ctid; } ;
typedef int Relation ;
typedef scalar_t__ Page ;
typedef scalar_t__ OffsetNumber ;
typedef int * ItemPointer ;
typedef int * ItemId ;
typedef TYPE_2__* HeapTupleHeader ;
typedef int Buffer ;


 int Assert (int ) ;
 int BUFFER_LOCK_EXCLUSIVE ;
 scalar_t__ BufferGetPage (int ) ;
 int END_CRIT_SECTION () ;
 int ERROR ;
 int HeapTupleHeaderIsSpeculative (TYPE_2__*) ;
 int ItemIdIsNormal (int *) ;
 int ItemPointerGetBlockNumber (int *) ;
 void* ItemPointerGetOffsetNumber (int *) ;
 int LockBuffer (int ,int ) ;
 int MarkBufferDirty (int ) ;
 scalar_t__ MaxOffsetNumber ;
 scalar_t__ PageGetItem (scalar_t__,int *) ;
 int * PageGetItemId (scalar_t__,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (scalar_t__) ;
 int PageSetLSN (scalar_t__,int ) ;
 int REGBUF_STANDARD ;
 int RM_HEAP_ID ;
 int ReadBuffer (int ,int ) ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int START_CRIT_SECTION () ;
 int SizeOfHeapConfirm ;
 scalar_t__ SpecTokenOffsetNumber ;
 int StaticAssertStmt (int,char*) ;
 int UnlockReleaseBuffer (int ) ;
 int XLOG_HEAP_CONFIRM ;
 int XLOG_INCLUDE_ORIGIN ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBuffer (int ,int ,int ) ;
 int XLogRegisterData (char*,int ) ;
 int XLogSetRecordFlags (int ) ;
 int elog (int ,char*) ;

void
heap_finish_speculative(Relation relation, ItemPointer tid)
{
 Buffer buffer;
 Page page;
 OffsetNumber offnum;
 ItemId lp = ((void*)0);
 HeapTupleHeader htup;

 buffer = ReadBuffer(relation, ItemPointerGetBlockNumber(tid));
 LockBuffer(buffer, BUFFER_LOCK_EXCLUSIVE);
 page = (Page) BufferGetPage(buffer);

 offnum = ItemPointerGetOffsetNumber(tid);
 if (PageGetMaxOffsetNumber(page) >= offnum)
  lp = PageGetItemId(page, offnum);

 if (PageGetMaxOffsetNumber(page) < offnum || !ItemIdIsNormal(lp))
  elog(ERROR, "invalid lp");

 htup = (HeapTupleHeader) PageGetItem(page, lp);


 StaticAssertStmt(MaxOffsetNumber < SpecTokenOffsetNumber,
      "invalid speculative token constant");


 START_CRIT_SECTION();

 Assert(HeapTupleHeaderIsSpeculative(htup));

 MarkBufferDirty(buffer);





 htup->t_ctid = *tid;


 if (RelationNeedsWAL(relation))
 {
  xl_heap_confirm xlrec;
  XLogRecPtr recptr;

  xlrec.offnum = ItemPointerGetOffsetNumber(tid);

  XLogBeginInsert();


  XLogSetRecordFlags(XLOG_INCLUDE_ORIGIN);

  XLogRegisterData((char *) &xlrec, SizeOfHeapConfirm);
  XLogRegisterBuffer(0, buffer, REGBUF_STANDARD);

  recptr = XLogInsert(RM_HEAP_ID, XLOG_HEAP_CONFIRM);

  PageSetLSN(page, recptr);
 }

 END_CRIT_SECTION();

 UnlockReleaseBuffer(buffer);
}
