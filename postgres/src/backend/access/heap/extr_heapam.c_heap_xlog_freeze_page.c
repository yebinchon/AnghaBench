
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int offset; } ;
typedef TYPE_1__ xl_heap_freeze_tuple ;
struct TYPE_11__ {int ntuples; int cutoff_xid; } ;
typedef TYPE_2__ xl_heap_freeze_page ;
typedef int XLogRecPtr ;
struct TYPE_12__ {int EndRecPtr; } ;
typedef TYPE_3__ XLogReaderState ;
typedef int TransactionId ;
typedef int RelFileNode ;
typedef int Page ;
typedef int ItemId ;
typedef scalar_t__ HeapTupleHeader ;
typedef int Buffer ;


 scalar_t__ BLK_NEEDS_REDO ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 scalar_t__ InHotStandby ;
 int MarkBufferDirty (int ) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,int ) ;
 int PageSetLSN (int ,int ) ;
 int ResolveRecoveryConflictWithSnapshot (int ,int ) ;
 int TransactionIdRetreat (int ) ;
 int UnlockReleaseBuffer (int ) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_3__*,int ,int *) ;
 scalar_t__ XLogRecGetBlockData (TYPE_3__*,int ,int *) ;
 int XLogRecGetBlockTag (TYPE_3__*,int ,int *,int *,int *) ;
 scalar_t__ XLogRecGetData (TYPE_3__*) ;
 int heap_execute_freeze_tuple (scalar_t__,TYPE_1__*) ;

__attribute__((used)) static void
heap_xlog_freeze_page(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 xl_heap_freeze_page *xlrec = (xl_heap_freeze_page *) XLogRecGetData(record);
 TransactionId cutoff_xid = xlrec->cutoff_xid;
 Buffer buffer;
 int ntup;





 if (InHotStandby)
 {
  RelFileNode rnode;
  TransactionId latestRemovedXid = cutoff_xid;

  TransactionIdRetreat(latestRemovedXid);

  XLogRecGetBlockTag(record, 0, &rnode, ((void*)0), ((void*)0));
  ResolveRecoveryConflictWithSnapshot(latestRemovedXid, rnode);
 }

 if (XLogReadBufferForRedo(record, 0, &buffer) == BLK_NEEDS_REDO)
 {
  Page page = BufferGetPage(buffer);
  xl_heap_freeze_tuple *tuples;

  tuples = (xl_heap_freeze_tuple *) XLogRecGetBlockData(record, 0, ((void*)0));


  for (ntup = 0; ntup < xlrec->ntuples; ntup++)
  {
   xl_heap_freeze_tuple *xlrec_tp;
   ItemId lp;
   HeapTupleHeader tuple;

   xlrec_tp = &tuples[ntup];
   lp = PageGetItemId(page, xlrec_tp->offset);
   tuple = (HeapTupleHeader) PageGetItem(page, lp);

   heap_execute_freeze_tuple(tuple, xlrec_tp);
  }

  PageSetLSN(page, lsn);
  MarkBufferDirty(buffer);
 }
 if (BufferIsValid(buffer))
  UnlockReleaseBuffer(buffer);
}
