
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ xmax; int offnum; int infobits_set; int flags; } ;
typedef TYPE_3__ xl_heap_delete ;
typedef int XLogRecPtr ;
typedef scalar_t__ TransactionId ;
struct TYPE_15__ {int t_self; TYPE_4__* t_data; int t_len; int t_tableOid; } ;
struct TYPE_11__ {scalar_t__ t_xmin; } ;
struct TYPE_12__ {TYPE_1__ t_heap; } ;
struct TYPE_14__ {int t_infomask; int t_infomask2; int t_ctid; TYPE_2__ t_choice; } ;
typedef int Relation ;
typedef int Page ;
typedef int * ItemPointer ;
typedef int ItemId ;
typedef TYPE_4__* HeapTupleHeader ;
typedef TYPE_5__ HeapTupleData ;
typedef int Buffer ;
typedef int BlockNumber ;


 int Assert (int) ;
 int BUFFER_LOCK_EXCLUSIVE ;
 int BUFFER_LOCK_UNLOCK ;
 int BufferGetPage (int ) ;
 int END_CRIT_SECTION () ;
 int ERROR ;
 scalar_t__ GetCurrentTransactionId () ;
 int HEAP_KEYS_UPDATED ;
 int HEAP_MOVED ;
 int HEAP_XMAX_BITS ;
 scalar_t__ HeapTupleHasExternal (TYPE_5__*) ;
 int HeapTupleHeaderIsHeapOnly (TYPE_4__*) ;
 scalar_t__ HeapTupleHeaderIsSpeculative (TYPE_4__*) ;
 int HeapTupleHeaderSetXmin (TYPE_4__*,int ) ;
 int InvalidTransactionId ;
 scalar_t__ IsToastRelation (int ) ;
 int ItemIdGetLength (int ) ;
 int ItemIdIsNormal (int ) ;
 int ItemPointerGetBlockNumber (int *) ;
 int ItemPointerGetOffsetNumber (int *) ;
 int ItemPointerIsValid (int *) ;
 int LockBuffer (int ,int ) ;
 int MarkBufferDirty (int ) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,int ) ;
 int PageIsAllVisible (int ) ;
 int PageSetLSN (int ,int ) ;
 int PageSetPrunable (int ,int ) ;
 int REGBUF_STANDARD ;
 int RM_HEAP_ID ;
 int ReadBuffer (int ,int ) ;
 int RecentGlobalXmin ;
 int RelationGetRelid (int ) ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int ReleaseBuffer (int ) ;
 int START_CRIT_SECTION () ;
 int SizeOfHeapDelete ;
 int TransactionIdIsValid (int ) ;
 int XLH_DELETE_IS_SUPER ;
 int XLOG_HEAP_DELETE ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBuffer (int ,int ,int ) ;
 int XLogRegisterData (char*,int ) ;
 int compute_infobits (int,int ) ;
 int elog (int ,char*) ;
 int heap_toast_delete (int ,TYPE_5__*,int) ;
 int pgstat_count_heap_delete (int ) ;

void
heap_abort_speculative(Relation relation, ItemPointer tid)
{
 TransactionId xid = GetCurrentTransactionId();
 ItemId lp;
 HeapTupleData tp;
 Page page;
 BlockNumber block;
 Buffer buffer;

 Assert(ItemPointerIsValid(tid));

 block = ItemPointerGetBlockNumber(tid);
 buffer = ReadBuffer(relation, block);
 page = BufferGetPage(buffer);

 LockBuffer(buffer, BUFFER_LOCK_EXCLUSIVE);





 Assert(!PageIsAllVisible(page));

 lp = PageGetItemId(page, ItemPointerGetOffsetNumber(tid));
 Assert(ItemIdIsNormal(lp));

 tp.t_tableOid = RelationGetRelid(relation);
 tp.t_data = (HeapTupleHeader) PageGetItem(page, lp);
 tp.t_len = ItemIdGetLength(lp);
 tp.t_self = *tid;





 if (tp.t_data->t_choice.t_heap.t_xmin != xid)
  elog(ERROR, "attempted to kill a tuple inserted by another transaction");
 if (!(IsToastRelation(relation) || HeapTupleHeaderIsSpeculative(tp.t_data)))
  elog(ERROR, "attempted to kill a non-speculative tuple");
 Assert(!HeapTupleHeaderIsHeapOnly(tp.t_data));







 START_CRIT_SECTION();







 Assert(TransactionIdIsValid(RecentGlobalXmin));
 PageSetPrunable(page, RecentGlobalXmin);


 tp.t_data->t_infomask &= ~(HEAP_XMAX_BITS | HEAP_MOVED);
 tp.t_data->t_infomask2 &= ~HEAP_KEYS_UPDATED;






 HeapTupleHeaderSetXmin(tp.t_data, InvalidTransactionId);


 tp.t_data->t_ctid = tp.t_self;

 MarkBufferDirty(buffer);







 if (RelationNeedsWAL(relation))
 {
  xl_heap_delete xlrec;
  XLogRecPtr recptr;

  xlrec.flags = XLH_DELETE_IS_SUPER;
  xlrec.infobits_set = compute_infobits(tp.t_data->t_infomask,
             tp.t_data->t_infomask2);
  xlrec.offnum = ItemPointerGetOffsetNumber(&tp.t_self);
  xlrec.xmax = xid;

  XLogBeginInsert();
  XLogRegisterData((char *) &xlrec, SizeOfHeapDelete);
  XLogRegisterBuffer(0, buffer, REGBUF_STANDARD);



  recptr = XLogInsert(RM_HEAP_ID, XLOG_HEAP_DELETE);

  PageSetLSN(page, recptr);
 }

 END_CRIT_SECTION();

 LockBuffer(buffer, BUFFER_LOCK_UNLOCK);

 if (HeapTupleHasExternal(&tp))
 {
  Assert(!IsToastRelation(relation));
  heap_toast_delete(relation, &tp, 1);
 }







 ReleaseBuffer(buffer);


 pgstat_count_heap_delete(relation);
}
