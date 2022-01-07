
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_57__ TYPE_9__ ;
typedef struct TYPE_56__ TYPE_8__ ;
typedef struct TYPE_55__ TYPE_7__ ;
typedef struct TYPE_54__ TYPE_6__ ;
typedef struct TYPE_53__ TYPE_5__ ;
typedef struct TYPE_52__ TYPE_4__ ;
typedef struct TYPE_51__ TYPE_3__ ;
typedef struct TYPE_50__ TYPE_2__ ;
typedef struct TYPE_49__ TYPE_1__ ;


struct TYPE_51__ {int t_hoff; int t_infomask; int t_infomask2; } ;
typedef TYPE_3__ xl_heap_header ;
struct TYPE_52__ {int flags; scalar_t__ xmax; int offnum; int infobits_set; } ;
typedef TYPE_4__ xl_heap_delete ;
typedef int uint16 ;
typedef int XLogRecPtr ;
typedef scalar_t__ TransactionId ;
struct TYPE_57__ {int t_len; TYPE_1__* t_data; } ;
struct TYPE_56__ {int t_self; TYPE_7__* t_data; int t_len; int t_tableOid; } ;
struct TYPE_55__ {int t_infomask; int t_infomask2; int t_ctid; } ;
struct TYPE_54__ {TYPE_2__* rd_rel; } ;
struct TYPE_53__ {int cmax; int xmax; int ctid; } ;
struct TYPE_50__ {scalar_t__ relreplident; scalar_t__ relkind; } ;
struct TYPE_49__ {int t_hoff; int t_infomask; int t_infomask2; } ;
typedef scalar_t__ TM_Result ;
typedef TYPE_5__ TM_FailureData ;
typedef int Snapshot ;
typedef TYPE_6__* Relation ;
typedef int Page ;
typedef int MultiXactId ;
typedef int * ItemPointer ;
typedef int ItemId ;
typedef TYPE_7__* HeapTupleHeader ;
typedef TYPE_8__ HeapTupleData ;
typedef TYPE_9__* HeapTuple ;
typedef int CommandId ;
typedef scalar_t__ Buffer ;
typedef int BlockNumber ;


 int Assert (int) ;
 int BUFFER_LOCK_EXCLUSIVE ;
 int BUFFER_LOCK_UNLOCK ;
 int BufferGetBlockNumber (scalar_t__) ;
 int BufferGetPage (scalar_t__) ;
 int CacheInvalidateHeapTuple (TYPE_6__*,TYPE_8__*,int *) ;
 int CheckForSerializableConflictIn (TYPE_6__*,TYPE_8__*,scalar_t__) ;
 scalar_t__ DoesMultiXactIdConflict (int ,int,int ,int*) ;
 int END_CRIT_SECTION () ;
 int ERRCODE_INVALID_TRANSACTION_STATE ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 TYPE_9__* ExtractReplicaIdentity (TYPE_6__*,TYPE_8__*,int,int*) ;
 scalar_t__ GetCurrentTransactionId () ;
 int HEAP_KEYS_UPDATED ;
 int HEAP_MOVED ;
 int HEAP_XMAX_BITS ;
 int HEAP_XMAX_INVALID ;
 scalar_t__ HEAP_XMAX_IS_LOCKED_ONLY (int) ;
 int HEAP_XMAX_IS_MULTI ;
 scalar_t__ HeapTupleHasExternal (TYPE_8__*) ;
 int HeapTupleHeaderAdjustCmax (TYPE_7__*,int *,int*) ;
 int HeapTupleHeaderClearHotUpdated (TYPE_7__*) ;
 int HeapTupleHeaderGetCmax (TYPE_7__*) ;
 scalar_t__ HeapTupleHeaderGetRawXmax (TYPE_7__*) ;
 int HeapTupleHeaderGetUpdateXid (TYPE_7__*) ;
 scalar_t__ HeapTupleHeaderIndicatesMovedPartitions (TYPE_7__*) ;
 scalar_t__ HeapTupleHeaderIsOnlyLocked (TYPE_7__*) ;
 int HeapTupleHeaderSetCmax (TYPE_7__*,int ,int) ;
 int HeapTupleHeaderSetMovedPartitions (TYPE_7__*) ;
 int HeapTupleHeaderSetXmax (TYPE_7__*,scalar_t__) ;
 scalar_t__ HeapTupleSatisfiesUpdate (TYPE_8__*,int ,scalar_t__) ;
 int HeapTupleSatisfiesVisibility (TYPE_8__*,int ,scalar_t__) ;
 scalar_t__ InvalidBuffer ;
 int InvalidCommandId ;
 int InvalidSnapshot ;
 scalar_t__ IsInParallelMode () ;
 int ItemIdGetLength (int ) ;
 int ItemIdIsNormal (int ) ;
 int ItemPointerEquals (int *,int *) ;
 int ItemPointerGetBlockNumber (int *) ;
 int ItemPointerGetOffsetNumber (int *) ;
 int ItemPointerIsValid (int *) ;
 int LockBuffer (scalar_t__,int ) ;
 int LockTupleExclusive ;
 int LockWaitBlock ;
 int MarkBufferDirty (scalar_t__) ;
 int MultiXactIdSetOldestMember () ;
 int MultiXactIdWait (int ,int ,int,TYPE_6__*,int *,int ,int *) ;
 int MultiXactStatusUpdate ;
 int PageClearAllVisible (int ) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,int ) ;
 scalar_t__ PageIsAllVisible (int ) ;
 int PageSetLSN (int ,int ) ;
 int PageSetPrunable (int ,scalar_t__) ;
 int REGBUF_STANDARD ;
 scalar_t__ RELKIND_MATVIEW ;
 scalar_t__ RELKIND_RELATION ;
 scalar_t__ REPLICA_IDENTITY_FULL ;
 int RM_HEAP_ID ;
 scalar_t__ ReadBuffer (TYPE_6__*,int ) ;
 int RelationGetRelid (TYPE_6__*) ;
 scalar_t__ RelationIsAccessibleInLogicalDecoding (TYPE_6__*) ;
 scalar_t__ RelationNeedsWAL (TYPE_6__*) ;
 int ReleaseBuffer (scalar_t__) ;
 int START_CRIT_SECTION () ;
 int SizeOfHeapDelete ;
 int SizeOfHeapHeader ;
 int SizeofHeapTupleHeader ;
 scalar_t__ TM_BeingModified ;
 scalar_t__ TM_Deleted ;
 scalar_t__ TM_Invisible ;
 scalar_t__ TM_Ok ;
 scalar_t__ TM_SelfModified ;
 scalar_t__ TM_Updated ;
 int TransactionIdEquals (scalar_t__,scalar_t__) ;
 int TransactionIdIsCurrentTransactionId (scalar_t__) ;
 int UnlockReleaseBuffer (scalar_t__) ;
 int UnlockTupleTuplock (TYPE_6__*,int *,int ) ;
 int UpdateXmaxHintBits (TYPE_7__*,scalar_t__,scalar_t__) ;
 int VISIBILITYMAP_VALID_BITS ;
 int XLH_DELETE_ALL_VISIBLE_CLEARED ;
 int XLH_DELETE_CONTAINS_OLD_KEY ;
 int XLH_DELETE_CONTAINS_OLD_TUPLE ;
 int XLH_DELETE_IS_PARTITION_MOVE ;
 int XLOG_HEAP_DELETE ;
 int XLOG_INCLUDE_ORIGIN ;
 int XLTW_Delete ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBuffer (int ,scalar_t__,int ) ;
 int XLogRegisterData (char*,int) ;
 int XLogSetRecordFlags (int ) ;
 int XactLockTableWait (scalar_t__,TYPE_6__*,int *,int ) ;
 int compute_infobits (int,int) ;
 int compute_new_xmax_infomask (scalar_t__,int,int,scalar_t__,int ,int,scalar_t__*,int*,int*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int heap_acquire_tuplock (TYPE_6__*,int *,int ,int ,int*) ;
 int heap_freetuple (TYPE_9__*) ;
 int heap_toast_delete (TYPE_6__*,TYPE_8__*,int) ;
 int log_heap_new_cid (TYPE_6__*,TYPE_8__*) ;
 int pgstat_count_heap_delete (TYPE_6__*) ;
 int visibilitymap_clear (TYPE_6__*,int ,scalar_t__,int ) ;
 int visibilitymap_pin (TYPE_6__*,int ,scalar_t__*) ;
 scalar_t__ xmax_infomask_changed (int,int) ;

TM_Result
heap_delete(Relation relation, ItemPointer tid,
   CommandId cid, Snapshot crosscheck, bool wait,
   TM_FailureData *tmfd, bool changingPart)
{
 TM_Result result;
 TransactionId xid = GetCurrentTransactionId();
 ItemId lp;
 HeapTupleData tp;
 Page page;
 BlockNumber block;
 Buffer buffer;
 Buffer vmbuffer = InvalidBuffer;
 TransactionId new_xmax;
 uint16 new_infomask,
    new_infomask2;
 bool have_tuple_lock = 0;
 bool iscombo;
 bool all_visible_cleared = 0;
 HeapTuple old_key_tuple = ((void*)0);
 bool old_key_copied = 0;

 Assert(ItemPointerIsValid(tid));






 if (IsInParallelMode())
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TRANSACTION_STATE),
     errmsg("cannot delete tuples during a parallel operation")));

 block = ItemPointerGetBlockNumber(tid);
 buffer = ReadBuffer(relation, block);
 page = BufferGetPage(buffer);







 if (PageIsAllVisible(page))
  visibilitymap_pin(relation, block, &vmbuffer);

 LockBuffer(buffer, BUFFER_LOCK_EXCLUSIVE);







 if (vmbuffer == InvalidBuffer && PageIsAllVisible(page))
 {
  LockBuffer(buffer, BUFFER_LOCK_UNLOCK);
  visibilitymap_pin(relation, block, &vmbuffer);
  LockBuffer(buffer, BUFFER_LOCK_EXCLUSIVE);
 }

 lp = PageGetItemId(page, ItemPointerGetOffsetNumber(tid));
 Assert(ItemIdIsNormal(lp));

 tp.t_tableOid = RelationGetRelid(relation);
 tp.t_data = (HeapTupleHeader) PageGetItem(page, lp);
 tp.t_len = ItemIdGetLength(lp);
 tp.t_self = *tid;

l1:
 result = HeapTupleSatisfiesUpdate(&tp, cid, buffer);

 if (result == TM_Invisible)
 {
  UnlockReleaseBuffer(buffer);
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("attempted to delete invisible tuple")));
 }
 else if (result == TM_BeingModified && wait)
 {
  TransactionId xwait;
  uint16 infomask;


  xwait = HeapTupleHeaderGetRawXmax(tp.t_data);
  infomask = tp.t_data->t_infomask;
  if (infomask & HEAP_XMAX_IS_MULTI)
  {
   bool current_is_member = 0;

   if (DoesMultiXactIdConflict((MultiXactId) xwait, infomask,
          LockTupleExclusive, &current_is_member))
   {
    LockBuffer(buffer, BUFFER_LOCK_UNLOCK);





    if (!current_is_member)
     heap_acquire_tuplock(relation, &(tp.t_self), LockTupleExclusive,
           LockWaitBlock, &have_tuple_lock);


    MultiXactIdWait((MultiXactId) xwait, MultiXactStatusUpdate, infomask,
        relation, &(tp.t_self), XLTW_Delete,
        ((void*)0));
    LockBuffer(buffer, BUFFER_LOCK_EXCLUSIVE);






    if (xmax_infomask_changed(tp.t_data->t_infomask, infomask) ||
     !TransactionIdEquals(HeapTupleHeaderGetRawXmax(tp.t_data),
           xwait))
     goto l1;
   }
  }
  else if (!TransactionIdIsCurrentTransactionId(xwait))
  {




   LockBuffer(buffer, BUFFER_LOCK_UNLOCK);
   heap_acquire_tuplock(relation, &(tp.t_self), LockTupleExclusive,
         LockWaitBlock, &have_tuple_lock);
   XactLockTableWait(xwait, relation, &(tp.t_self), XLTW_Delete);
   LockBuffer(buffer, BUFFER_LOCK_EXCLUSIVE);






   if (xmax_infomask_changed(tp.t_data->t_infomask, infomask) ||
    !TransactionIdEquals(HeapTupleHeaderGetRawXmax(tp.t_data),
          xwait))
    goto l1;


   UpdateXmaxHintBits(tp.t_data, buffer, xwait);
  }





  if ((tp.t_data->t_infomask & HEAP_XMAX_INVALID) ||
   HEAP_XMAX_IS_LOCKED_ONLY(tp.t_data->t_infomask) ||
   HeapTupleHeaderIsOnlyLocked(tp.t_data))
   result = TM_Ok;
  else if (!ItemPointerEquals(&tp.t_self, &tp.t_data->t_ctid) ||
     HeapTupleHeaderIndicatesMovedPartitions(tp.t_data))
   result = TM_Updated;
  else
   result = TM_Deleted;
 }

 if (crosscheck != InvalidSnapshot && result == TM_Ok)
 {

  if (!HeapTupleSatisfiesVisibility(&tp, crosscheck, buffer))
   result = TM_Updated;
 }

 if (result != TM_Ok)
 {
  Assert(result == TM_SelfModified ||
      result == TM_Updated ||
      result == TM_Deleted ||
      result == TM_BeingModified);
  Assert(!(tp.t_data->t_infomask & HEAP_XMAX_INVALID));
  Assert(result != TM_Updated ||
      !ItemPointerEquals(&tp.t_self, &tp.t_data->t_ctid));
  tmfd->ctid = tp.t_data->t_ctid;
  tmfd->xmax = HeapTupleHeaderGetUpdateXid(tp.t_data);
  if (result == TM_SelfModified)
   tmfd->cmax = HeapTupleHeaderGetCmax(tp.t_data);
  else
   tmfd->cmax = InvalidCommandId;
  UnlockReleaseBuffer(buffer);
  if (have_tuple_lock)
   UnlockTupleTuplock(relation, &(tp.t_self), LockTupleExclusive);
  if (vmbuffer != InvalidBuffer)
   ReleaseBuffer(vmbuffer);
  return result;
 }
 CheckForSerializableConflictIn(relation, &tp, buffer);


 HeapTupleHeaderAdjustCmax(tp.t_data, &cid, &iscombo);





 old_key_tuple = ExtractReplicaIdentity(relation, &tp, 1, &old_key_copied);
 MultiXactIdSetOldestMember();

 compute_new_xmax_infomask(HeapTupleHeaderGetRawXmax(tp.t_data),
         tp.t_data->t_infomask, tp.t_data->t_infomask2,
         xid, LockTupleExclusive, 1,
         &new_xmax, &new_infomask, &new_infomask2);

 START_CRIT_SECTION();
 PageSetPrunable(page, xid);

 if (PageIsAllVisible(page))
 {
  all_visible_cleared = 1;
  PageClearAllVisible(page);
  visibilitymap_clear(relation, BufferGetBlockNumber(buffer),
       vmbuffer, VISIBILITYMAP_VALID_BITS);
 }


 tp.t_data->t_infomask &= ~(HEAP_XMAX_BITS | HEAP_MOVED);
 tp.t_data->t_infomask2 &= ~HEAP_KEYS_UPDATED;
 tp.t_data->t_infomask |= new_infomask;
 tp.t_data->t_infomask2 |= new_infomask2;
 HeapTupleHeaderClearHotUpdated(tp.t_data);
 HeapTupleHeaderSetXmax(tp.t_data, new_xmax);
 HeapTupleHeaderSetCmax(tp.t_data, cid, iscombo);

 tp.t_data->t_ctid = tp.t_self;


 if (changingPart)
  HeapTupleHeaderSetMovedPartitions(tp.t_data);

 MarkBufferDirty(buffer);







 if (RelationNeedsWAL(relation))
 {
  xl_heap_delete xlrec;
  xl_heap_header xlhdr;
  XLogRecPtr recptr;


  if (RelationIsAccessibleInLogicalDecoding(relation))
   log_heap_new_cid(relation, &tp);

  xlrec.flags = 0;
  if (all_visible_cleared)
   xlrec.flags |= XLH_DELETE_ALL_VISIBLE_CLEARED;
  if (changingPart)
   xlrec.flags |= XLH_DELETE_IS_PARTITION_MOVE;
  xlrec.infobits_set = compute_infobits(tp.t_data->t_infomask,
             tp.t_data->t_infomask2);
  xlrec.offnum = ItemPointerGetOffsetNumber(&tp.t_self);
  xlrec.xmax = new_xmax;

  if (old_key_tuple != ((void*)0))
  {
   if (relation->rd_rel->relreplident == REPLICA_IDENTITY_FULL)
    xlrec.flags |= XLH_DELETE_CONTAINS_OLD_TUPLE;
   else
    xlrec.flags |= XLH_DELETE_CONTAINS_OLD_KEY;
  }

  XLogBeginInsert();
  XLogRegisterData((char *) &xlrec, SizeOfHeapDelete);

  XLogRegisterBuffer(0, buffer, REGBUF_STANDARD);




  if (old_key_tuple != ((void*)0))
  {
   xlhdr.t_infomask2 = old_key_tuple->t_data->t_infomask2;
   xlhdr.t_infomask = old_key_tuple->t_data->t_infomask;
   xlhdr.t_hoff = old_key_tuple->t_data->t_hoff;

   XLogRegisterData((char *) &xlhdr, SizeOfHeapHeader);
   XLogRegisterData((char *) old_key_tuple->t_data
        + SizeofHeapTupleHeader,
        old_key_tuple->t_len
        - SizeofHeapTupleHeader);
  }


  XLogSetRecordFlags(XLOG_INCLUDE_ORIGIN);

  recptr = XLogInsert(RM_HEAP_ID, XLOG_HEAP_DELETE);

  PageSetLSN(page, recptr);
 }

 END_CRIT_SECTION();

 LockBuffer(buffer, BUFFER_LOCK_UNLOCK);

 if (vmbuffer != InvalidBuffer)
  ReleaseBuffer(vmbuffer);







 if (relation->rd_rel->relkind != RELKIND_RELATION &&
  relation->rd_rel->relkind != RELKIND_MATVIEW)
 {

  Assert(!HeapTupleHasExternal(&tp));
 }
 else if (HeapTupleHasExternal(&tp))
  heap_toast_delete(relation, &tp, 0);






 CacheInvalidateHeapTuple(relation, &tp, ((void*)0));


 ReleaseBuffer(buffer);




 if (have_tuple_lock)
  UnlockTupleTuplock(relation, &(tp.t_self), LockTupleExclusive);

 pgstat_count_heap_delete(relation);

 if (old_key_tuple != ((void*)0) && old_key_copied)
  heap_freetuple(old_key_tuple);

 return TM_Ok;
}
