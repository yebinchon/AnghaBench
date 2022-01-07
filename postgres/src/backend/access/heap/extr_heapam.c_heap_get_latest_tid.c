
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int TransactionId ;
typedef TYPE_1__* TableScanDesc ;
struct TYPE_13__ {TYPE_2__* t_data; int t_self; int t_tableOid; int t_len; } ;
struct TYPE_12__ {int t_infomask; int t_ctid; } ;
struct TYPE_11__ {int rs_snapshot; int rs_rd; } ;
typedef int Snapshot ;
typedef int Relation ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemPointerData ;
typedef int * ItemPointer ;
typedef int ItemId ;
typedef TYPE_2__* HeapTupleHeader ;
typedef TYPE_3__ HeapTupleData ;
typedef int Buffer ;


 int Assert (int ) ;
 int BUFFER_LOCK_SHARE ;
 int BufferGetPage (int ) ;
 int CheckForSerializableConflictOut (int,int ,TYPE_3__*,int ,int ) ;
 scalar_t__ FirstOffsetNumber ;
 int HEAP_XMAX_INVALID ;
 int HeapTupleHeaderGetUpdateXid (TYPE_2__*) ;
 int HeapTupleHeaderGetXmin (TYPE_2__*) ;
 scalar_t__ HeapTupleHeaderIndicatesMovedPartitions (TYPE_2__*) ;
 scalar_t__ HeapTupleHeaderIsOnlyLocked (TYPE_2__*) ;
 int HeapTupleSatisfiesVisibility (TYPE_3__*,int ,int ) ;
 int InvalidTransactionId ;
 int ItemIdGetLength (int ) ;
 int ItemIdIsNormal (int ) ;
 scalar_t__ ItemPointerEquals (int *,int *) ;
 int ItemPointerGetBlockNumber (int *) ;
 scalar_t__ ItemPointerGetOffsetNumber (int *) ;
 int ItemPointerIsValid (int *) ;
 int LockBuffer (int ,int ) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 int ReadBuffer (int ,int ) ;
 int RelationGetRelid (int ) ;
 int TestForOldSnapshot (int ,int ,int ) ;
 int TransactionIdEquals (int ,int ) ;
 scalar_t__ TransactionIdIsValid (int ) ;
 int UnlockReleaseBuffer (int ) ;

void
heap_get_latest_tid(TableScanDesc sscan,
     ItemPointer tid)
{
 Relation relation = sscan->rs_rd;
 Snapshot snapshot = sscan->rs_snapshot;
 ItemPointerData ctid;
 TransactionId priorXmax;






 Assert(ItemPointerIsValid(tid));
 ctid = *tid;
 priorXmax = InvalidTransactionId;
 for (;;)
 {
  Buffer buffer;
  Page page;
  OffsetNumber offnum;
  ItemId lp;
  HeapTupleData tp;
  bool valid;




  buffer = ReadBuffer(relation, ItemPointerGetBlockNumber(&ctid));
  LockBuffer(buffer, BUFFER_LOCK_SHARE);
  page = BufferGetPage(buffer);
  TestForOldSnapshot(snapshot, relation, page);






  offnum = ItemPointerGetOffsetNumber(&ctid);
  if (offnum < FirstOffsetNumber || offnum > PageGetMaxOffsetNumber(page))
  {
   UnlockReleaseBuffer(buffer);
   break;
  }
  lp = PageGetItemId(page, offnum);
  if (!ItemIdIsNormal(lp))
  {
   UnlockReleaseBuffer(buffer);
   break;
  }


  tp.t_self = ctid;
  tp.t_data = (HeapTupleHeader) PageGetItem(page, lp);
  tp.t_len = ItemIdGetLength(lp);
  tp.t_tableOid = RelationGetRelid(relation);





  if (TransactionIdIsValid(priorXmax) &&
   !TransactionIdEquals(priorXmax, HeapTupleHeaderGetXmin(tp.t_data)))
  {
   UnlockReleaseBuffer(buffer);
   break;
  }





  valid = HeapTupleSatisfiesVisibility(&tp, snapshot, buffer);
  CheckForSerializableConflictOut(valid, relation, &tp, buffer, snapshot);
  if (valid)
   *tid = ctid;




  if ((tp.t_data->t_infomask & HEAP_XMAX_INVALID) ||
   HeapTupleHeaderIsOnlyLocked(tp.t_data) ||
   HeapTupleHeaderIndicatesMovedPartitions(tp.t_data) ||
   ItemPointerEquals(&tp.t_self, &tp.t_data->t_ctid))
  {
   UnlockReleaseBuffer(buffer);
   break;
  }

  ctid = tp.t_data->t_ctid;
  priorXmax = HeapTupleHeaderGetUpdateXid(tp.t_data);
  UnlockReleaseBuffer(buffer);
 }
}
