
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int node; } ;
typedef TYPE_1__ xl_seq_rec ;
struct TYPE_14__ {int magic; } ;
typedef TYPE_2__ sequence_magic ;
typedef int XLogRecPtr ;
struct TYPE_17__ {int t_ctid; int t_infomask; } ;
struct TYPE_16__ {int t_len; TYPE_9__* t_data; } ;
struct TYPE_15__ {int rd_node; } ;
typedef TYPE_3__* Relation ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int Item ;
typedef TYPE_4__* HeapTuple ;
typedef int Buffer ;


 int Assert (int) ;
 int BUFFER_LOCK_EXCLUSIVE ;
 scalar_t__ BufferGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 int BufferGetPageSize (int ) ;
 int END_CRIT_SECTION () ;
 int ERROR ;
 int FirstCommandId ;
 scalar_t__ FirstOffsetNumber ;
 int FrozenTransactionId ;
 int GetTopTransactionId () ;
 int HEAP_XMAX_INVALID ;
 int HeapTupleHeaderSetCmin (TYPE_9__*,int ) ;
 int HeapTupleHeaderSetXmax (TYPE_9__*,int ) ;
 int HeapTupleHeaderSetXmin (TYPE_9__*,int ) ;
 int HeapTupleHeaderSetXminFrozen (TYPE_9__*) ;
 int InvalidOffsetNumber ;
 int InvalidTransactionId ;
 int ItemPointerSet (int *,int ,scalar_t__) ;
 int LockBuffer (int ,int ) ;
 int MarkBufferDirty (int ) ;
 int P_NEW ;
 scalar_t__ PageAddItem (int ,int ,int,int ,int,int) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int PageInit (int ,int ,int) ;
 int PageSetLSN (int ,int ) ;
 int REGBUF_WILL_INIT ;
 int RM_SEQ_ID ;
 int ReadBuffer (TYPE_3__*,int ) ;
 scalar_t__ RelationNeedsWAL (TYPE_3__*) ;
 int SEQ_MAGIC ;
 int START_CRIT_SECTION () ;
 int UnlockReleaseBuffer (int ) ;
 int XLOG_SEQ_LOG ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBuffer (int ,int ,int ) ;
 int XLogRegisterData (char*,int) ;
 int elog (int ,char*) ;

__attribute__((used)) static void
fill_seq_with_data(Relation rel, HeapTuple tuple)
{
 Buffer buf;
 Page page;
 sequence_magic *sm;
 OffsetNumber offnum;



 buf = ReadBuffer(rel, P_NEW);
 Assert(BufferGetBlockNumber(buf) == 0);

 page = BufferGetPage(buf);

 PageInit(page, BufferGetPageSize(buf), sizeof(sequence_magic));
 sm = (sequence_magic *) PageGetSpecialPointer(page);
 sm->magic = SEQ_MAGIC;



 LockBuffer(buf, BUFFER_LOCK_EXCLUSIVE);
 HeapTupleHeaderSetXmin(tuple->t_data, FrozenTransactionId);
 HeapTupleHeaderSetXminFrozen(tuple->t_data);
 HeapTupleHeaderSetCmin(tuple->t_data, FirstCommandId);
 HeapTupleHeaderSetXmax(tuple->t_data, InvalidTransactionId);
 tuple->t_data->t_infomask |= HEAP_XMAX_INVALID;
 ItemPointerSet(&tuple->t_data->t_ctid, 0, FirstOffsetNumber);


 if (RelationNeedsWAL(rel))
  GetTopTransactionId();

 START_CRIT_SECTION();

 MarkBufferDirty(buf);

 offnum = PageAddItem(page, (Item) tuple->t_data, tuple->t_len,
       InvalidOffsetNumber, 0, 0);
 if (offnum != FirstOffsetNumber)
  elog(ERROR, "failed to add sequence tuple to page");


 if (RelationNeedsWAL(rel))
 {
  xl_seq_rec xlrec;
  XLogRecPtr recptr;

  XLogBeginInsert();
  XLogRegisterBuffer(0, buf, REGBUF_WILL_INIT);

  xlrec.node = rel->rd_node;

  XLogRegisterData((char *) &xlrec, sizeof(xl_seq_rec));
  XLogRegisterData((char *) tuple->t_data, tuple->t_len);

  recptr = XLogInsert(RM_SEQ_ID, XLOG_SEQ_LOG);

  PageSetLSN(page, recptr);
 }

 END_CRIT_SECTION();

 UnlockReleaseBuffer(buf);
}
