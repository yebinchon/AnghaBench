
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_20__ {int flags; int infobits_set; scalar_t__ locking_xid; int offnum; } ;
typedef TYPE_1__ xl_heap_lock ;
typedef int uint16 ;
typedef int XLogRecPtr ;
typedef scalar_t__ TransactionId ;
struct TYPE_24__ {TYPE_4__* t_data; int t_self; int t_tableOid; int t_len; } ;
struct TYPE_23__ {int t_infomask; int t_infomask2; int t_ctid; } ;
struct TYPE_22__ {int status; scalar_t__ xid; } ;
struct TYPE_21__ {int cmax; int xmax; int ctid; } ;
typedef scalar_t__ TM_Result ;
typedef TYPE_2__ TM_FailureData ;
typedef int Relation ;
typedef int Page ;
typedef scalar_t__ MultiXactStatus ;
typedef TYPE_3__ MultiXactMember ;
typedef int MultiXactId ;
typedef int LockWaitPolicy ;
typedef int const LockTupleMode ;
typedef int ItemPointerData ;
typedef int * ItemPointer ;
typedef int ItemId ;
typedef TYPE_4__* HeapTupleHeader ;
typedef TYPE_5__* HeapTuple ;
typedef int CommandId ;
typedef scalar_t__ Buffer ;
typedef int BlockNumber ;


 int Assert (int) ;
 int BUFFER_LOCK_EXCLUSIVE ;
 int BUFFER_LOCK_UNLOCK ;
 int BufferGetPage (scalar_t__) ;
 scalar_t__ BufferIsValid (scalar_t__) ;
 int ConditionalMultiXactIdWait (int ,scalar_t__,int,int ,int *) ;
 int ConditionalXactLockTableWait (scalar_t__) ;
 int DoesMultiXactIdConflict (int ,int,int const,int *) ;
 int END_CRIT_SECTION () ;
 int ERRCODE_LOCK_NOT_AVAILABLE ;
 int ERROR ;
 int GetCurrentTransactionId () ;
 int GetMultiXactIdMembers (scalar_t__,TYPE_3__**,int,int) ;
 int HEAP_KEYS_UPDATED ;
 int HEAP_XMAX_BITS ;
 int HEAP_XMAX_INVALID ;
 scalar_t__ HEAP_XMAX_IS_EXCL_LOCKED (int) ;
 scalar_t__ HEAP_XMAX_IS_KEYSHR_LOCKED (int) ;
 int HEAP_XMAX_IS_LOCKED_ONLY (int) ;
 int HEAP_XMAX_IS_MULTI ;
 int HEAP_XMAX_IS_SHR_LOCKED (int) ;
 int HeapTupleHeaderClearHotUpdated (TYPE_4__*) ;
 int HeapTupleHeaderGetCmax (TYPE_4__*) ;
 scalar_t__ HeapTupleHeaderGetRawXmax (TYPE_4__*) ;
 int HeapTupleHeaderGetUpdateXid (TYPE_4__*) ;
 scalar_t__ HeapTupleHeaderIndicatesMovedPartitions (TYPE_4__*) ;
 scalar_t__ HeapTupleHeaderIsOnlyLocked (TYPE_4__*) ;
 int HeapTupleHeaderSetXmax (TYPE_4__*,scalar_t__) ;
 scalar_t__ HeapTupleSatisfiesUpdate (TYPE_5__*,int ,scalar_t__) ;
 scalar_t__ InvalidBuffer ;
 int InvalidCommandId ;
 int ItemIdGetLength (int ) ;
 int ItemIdIsNormal (int ) ;
 int ItemPointerCopy (int *,int *) ;
 int ItemPointerEquals (int *,int *) ;
 int ItemPointerGetBlockNumber (int *) ;
 int ItemPointerGetOffsetNumber (int *) ;
 int LockBuffer (scalar_t__,int ) ;







 int MarkBufferDirty (scalar_t__) ;
 int MultiXactIdSetOldestMember () ;
 int MultiXactIdWait (int ,scalar_t__,int,int ,int *,int ,int *) ;
 scalar_t__ MultiXactStatusNoKeyUpdate ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,int ) ;
 scalar_t__ PageIsAllVisible (int ) ;
 int PageSetLSN (int ,int ) ;
 int REGBUF_STANDARD ;
 int RM_HEAP_ID ;
 scalar_t__ ReadBuffer (int ,int ) ;
 int RelationGetRelationName (int ) ;
 int RelationGetRelid (int ) ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int ReleaseBuffer (scalar_t__) ;
 int START_CRIT_SECTION () ;
 int SizeOfHeapLock ;
 scalar_t__ TM_BeingModified ;
 scalar_t__ TM_Deleted ;
 scalar_t__ TM_Invisible ;
 scalar_t__ TM_Ok ;
 scalar_t__ TM_SelfModified ;
 scalar_t__ TM_Updated ;
 scalar_t__ TM_WouldBlock ;
 int const TUPLOCK_from_mxstatus (int ) ;
 int TransactionIdEquals (scalar_t__,scalar_t__) ;
 scalar_t__ TransactionIdIsCurrentTransactionId (scalar_t__) ;
 int UnlockTupleTuplock (int ,int *,int const) ;
 int UpdateXmaxHintBits (TYPE_4__*,scalar_t__,scalar_t__) ;
 int VISIBILITYMAP_ALL_FROZEN ;
 int XLH_LOCK_ALL_FROZEN_CLEARED ;
 int XLOG_HEAP_LOCK ;
 int XLTW_Lock ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBuffer (int ,scalar_t__,int ) ;
 int XLogRegisterData (char*,int ) ;
 int XactLockTableWait (scalar_t__,int ,int *,int ) ;
 int compute_infobits (int,int) ;
 int compute_new_xmax_infomask (scalar_t__,int,int,int ,int const,int,scalar_t__*,int*,int*) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 scalar_t__ get_mxact_status_for_lock (int const,int) ;
 int heap_acquire_tuplock (int ,int *,int const,int ,int*) ;
 scalar_t__ heap_lock_updated_tuple (int ,TYPE_5__*,int *,int ,int const) ;
 int pfree (TYPE_3__*) ;
 scalar_t__ visibilitymap_clear (int ,int ,scalar_t__,int ) ;
 int visibilitymap_pin (int ,int ,scalar_t__*) ;
 scalar_t__ xmax_infomask_changed (int,int) ;

TM_Result
heap_lock_tuple(Relation relation, HeapTuple tuple,
    CommandId cid, LockTupleMode mode, LockWaitPolicy wait_policy,
    bool follow_updates,
    Buffer *buffer, TM_FailureData *tmfd)
{
 TM_Result result;
 ItemPointer tid = &(tuple->t_self);
 ItemId lp;
 Page page;
 Buffer vmbuffer = InvalidBuffer;
 BlockNumber block;
 TransactionId xid,
    xmax;
 uint16 old_infomask,
    new_infomask,
    new_infomask2;
 bool first_time = 1;
 bool skip_tuple_lock = 0;
 bool have_tuple_lock = 0;
 bool cleared_all_frozen = 0;

 *buffer = ReadBuffer(relation, ItemPointerGetBlockNumber(tid));
 block = ItemPointerGetBlockNumber(tid);







 if (PageIsAllVisible(BufferGetPage(*buffer)))
  visibilitymap_pin(relation, block, &vmbuffer);

 LockBuffer(*buffer, BUFFER_LOCK_EXCLUSIVE);

 page = BufferGetPage(*buffer);
 lp = PageGetItemId(page, ItemPointerGetOffsetNumber(tid));
 Assert(ItemIdIsNormal(lp));

 tuple->t_data = (HeapTupleHeader) PageGetItem(page, lp);
 tuple->t_len = ItemIdGetLength(lp);
 tuple->t_tableOid = RelationGetRelid(relation);

l3:
 result = HeapTupleSatisfiesUpdate(tuple, cid, *buffer);

 if (result == TM_Invisible)
 {






  result = TM_Invisible;
  goto out_locked;
 }
 else if (result == TM_BeingModified ||
    result == TM_Updated ||
    result == TM_Deleted)
 {
  TransactionId xwait;
  uint16 infomask;
  uint16 infomask2;
  bool require_sleep;
  ItemPointerData t_ctid;


  xwait = HeapTupleHeaderGetRawXmax(tuple->t_data);
  infomask = tuple->t_data->t_infomask;
  infomask2 = tuple->t_data->t_infomask2;
  ItemPointerCopy(&tuple->t_data->t_ctid, &t_ctid);

  LockBuffer(*buffer, BUFFER_LOCK_UNLOCK);
  if (first_time)
  {
   first_time = 0;

   if (infomask & HEAP_XMAX_IS_MULTI)
   {
    int i;
    int nmembers;
    MultiXactMember *members;






    nmembers =
     GetMultiXactIdMembers(xwait, &members, 0,
            HEAP_XMAX_IS_LOCKED_ONLY(infomask));

    for (i = 0; i < nmembers; i++)
    {

     if (!TransactionIdIsCurrentTransactionId(members[i].xid))
      continue;

     if (TUPLOCK_from_mxstatus(members[i].status) >= mode)
     {
      pfree(members);
      result = TM_Ok;
      goto out_unlocked;
     }
     else
     {
      skip_tuple_lock = 1;
     }
    }

    if (members)
     pfree(members);
   }
   else if (TransactionIdIsCurrentTransactionId(xwait))
   {
    switch (mode)
    {
     case 133:
      Assert(HEAP_XMAX_IS_KEYSHR_LOCKED(infomask) ||
          HEAP_XMAX_IS_SHR_LOCKED(infomask) ||
          HEAP_XMAX_IS_EXCL_LOCKED(infomask));
      result = TM_Ok;
      goto out_unlocked;
     case 131:
      if (HEAP_XMAX_IS_SHR_LOCKED(infomask) ||
       HEAP_XMAX_IS_EXCL_LOCKED(infomask))
      {
       result = TM_Ok;
       goto out_unlocked;
      }
      break;
     case 132:
      if (HEAP_XMAX_IS_EXCL_LOCKED(infomask))
      {
       result = TM_Ok;
       goto out_unlocked;
      }
      break;
     case 134:
      if (HEAP_XMAX_IS_EXCL_LOCKED(infomask) &&
       infomask2 & HEAP_KEYS_UPDATED)
      {
       result = TM_Ok;
       goto out_unlocked;
      }
      break;
    }
   }
  }






  require_sleep = 1;
  if (mode == 133)
  {
   if (!(infomask2 & HEAP_KEYS_UPDATED))
   {
    bool updated;

    updated = !HEAP_XMAX_IS_LOCKED_ONLY(infomask);





    if (follow_updates && updated)
    {
     TM_Result res;

     res = heap_lock_updated_tuple(relation, tuple, &t_ctid,
              GetCurrentTransactionId(),
              mode);
     if (res != TM_Ok)
     {
      result = res;

      LockBuffer(*buffer, BUFFER_LOCK_EXCLUSIVE);
      goto failed;
     }
    }

    LockBuffer(*buffer, BUFFER_LOCK_EXCLUSIVE);
    if (!HeapTupleHeaderIsOnlyLocked(tuple->t_data) &&
     ((tuple->t_data->t_infomask2 & HEAP_KEYS_UPDATED) ||
      !updated))
     goto l3;


    require_sleep = 0;
   }
  }
  else if (mode == 131)
  {




   if (HEAP_XMAX_IS_LOCKED_ONLY(infomask) &&
    !HEAP_XMAX_IS_EXCL_LOCKED(infomask))
   {
    LockBuffer(*buffer, BUFFER_LOCK_EXCLUSIVE);





    if (!HEAP_XMAX_IS_LOCKED_ONLY(tuple->t_data->t_infomask) ||
     HEAP_XMAX_IS_EXCL_LOCKED(tuple->t_data->t_infomask))
     goto l3;
    require_sleep = 0;
   }
  }
  else if (mode == 132)
  {





   if (infomask & HEAP_XMAX_IS_MULTI)
   {
    if (!DoesMultiXactIdConflict((MultiXactId) xwait, infomask,
            mode, ((void*)0)))
    {




     LockBuffer(*buffer, BUFFER_LOCK_EXCLUSIVE);
     if (xmax_infomask_changed(tuple->t_data->t_infomask, infomask) ||
      !TransactionIdEquals(HeapTupleHeaderGetRawXmax(tuple->t_data),
            xwait))
      goto l3;


     require_sleep = 0;
    }
   }
   else if (HEAP_XMAX_IS_KEYSHR_LOCKED(infomask))
   {
    LockBuffer(*buffer, BUFFER_LOCK_EXCLUSIVE);


    if (xmax_infomask_changed(tuple->t_data->t_infomask, infomask) ||
     !TransactionIdEquals(
           HeapTupleHeaderGetRawXmax(tuple->t_data),
           xwait))
     goto l3;

    require_sleep = 0;
   }
  }
  if (require_sleep && !(infomask & HEAP_XMAX_IS_MULTI) &&
   TransactionIdIsCurrentTransactionId(xwait))
  {

   LockBuffer(*buffer, BUFFER_LOCK_EXCLUSIVE);
   if (xmax_infomask_changed(tuple->t_data->t_infomask, infomask) ||
    !TransactionIdEquals(HeapTupleHeaderGetRawXmax(tuple->t_data),
          xwait))
    goto l3;
   Assert(HEAP_XMAX_IS_LOCKED_ONLY(tuple->t_data->t_infomask));
   require_sleep = 0;
  }
  if (require_sleep && (result == TM_Updated || result == TM_Deleted))
  {
   LockBuffer(*buffer, BUFFER_LOCK_EXCLUSIVE);
   goto failed;
  }
  else if (require_sleep)
  {
   if (!skip_tuple_lock &&
    !heap_acquire_tuplock(relation, tid, mode, wait_policy,
           &have_tuple_lock))
   {




    result = TM_WouldBlock;

    LockBuffer(*buffer, BUFFER_LOCK_EXCLUSIVE);
    goto failed;
   }

   if (infomask & HEAP_XMAX_IS_MULTI)
   {
    MultiXactStatus status = get_mxact_status_for_lock(mode, 0);


    if (status >= MultiXactStatusNoKeyUpdate)
     elog(ERROR, "invalid lock mode in heap_lock_tuple");


    switch (wait_policy)
    {
     case 130:
      MultiXactIdWait((MultiXactId) xwait, status, infomask,
          relation, &tuple->t_self, XLTW_Lock, ((void*)0));
      break;
     case 128:
      if (!ConditionalMultiXactIdWait((MultiXactId) xwait,
              status, infomask, relation,
              ((void*)0)))
      {
       result = TM_WouldBlock;

       LockBuffer(*buffer, BUFFER_LOCK_EXCLUSIVE);
       goto failed;
      }
      break;
     case 129:
      if (!ConditionalMultiXactIdWait((MultiXactId) xwait,
              status, infomask, relation,
              ((void*)0)))
       ereport(ERROR,
         (errcode(ERRCODE_LOCK_NOT_AVAILABLE),
          errmsg("could not obtain lock on row in relation \"%s\"",
           RelationGetRelationName(relation))));

      break;
    }
   }
   else
   {

    switch (wait_policy)
    {
     case 130:
      XactLockTableWait(xwait, relation, &tuple->t_self,
            XLTW_Lock);
      break;
     case 128:
      if (!ConditionalXactLockTableWait(xwait))
      {
       result = TM_WouldBlock;

       LockBuffer(*buffer, BUFFER_LOCK_EXCLUSIVE);
       goto failed;
      }
      break;
     case 129:
      if (!ConditionalXactLockTableWait(xwait))
       ereport(ERROR,
         (errcode(ERRCODE_LOCK_NOT_AVAILABLE),
          errmsg("could not obtain lock on row in relation \"%s\"",
           RelationGetRelationName(relation))));
      break;
    }
   }


   if (follow_updates && !HEAP_XMAX_IS_LOCKED_ONLY(infomask))
   {
    TM_Result res;

    res = heap_lock_updated_tuple(relation, tuple, &t_ctid,
             GetCurrentTransactionId(),
             mode);
    if (res != TM_Ok)
    {
     result = res;

     LockBuffer(*buffer, BUFFER_LOCK_EXCLUSIVE);
     goto failed;
    }
   }

   LockBuffer(*buffer, BUFFER_LOCK_EXCLUSIVE);






   if (xmax_infomask_changed(tuple->t_data->t_infomask, infomask) ||
    !TransactionIdEquals(HeapTupleHeaderGetRawXmax(tuple->t_data),
          xwait))
    goto l3;

   if (!(infomask & HEAP_XMAX_IS_MULTI))
   {
    UpdateXmaxHintBits(tuple->t_data, *buffer, xwait);
   }
  }
  if (!require_sleep ||
   (tuple->t_data->t_infomask & HEAP_XMAX_INVALID) ||
   HEAP_XMAX_IS_LOCKED_ONLY(tuple->t_data->t_infomask) ||
   HeapTupleHeaderIsOnlyLocked(tuple->t_data))
   result = TM_Ok;
  else if (!ItemPointerEquals(&tuple->t_self, &tuple->t_data->t_ctid) ||
     HeapTupleHeaderIndicatesMovedPartitions(tuple->t_data))
   result = TM_Updated;
  else
   result = TM_Deleted;
 }

failed:
 if (result != TM_Ok)
 {
  Assert(result == TM_SelfModified || result == TM_Updated ||
      result == TM_Deleted || result == TM_WouldBlock);
  Assert(!(tuple->t_data->t_infomask & HEAP_XMAX_INVALID));
  Assert(result != TM_Updated ||
      !ItemPointerEquals(&tuple->t_self, &tuple->t_data->t_ctid));
  tmfd->ctid = tuple->t_data->t_ctid;
  tmfd->xmax = HeapTupleHeaderGetUpdateXid(tuple->t_data);
  if (result == TM_SelfModified)
   tmfd->cmax = HeapTupleHeaderGetCmax(tuple->t_data);
  else
   tmfd->cmax = InvalidCommandId;
  goto out_locked;
 }
 if (vmbuffer == InvalidBuffer && PageIsAllVisible(page))
 {
  LockBuffer(*buffer, BUFFER_LOCK_UNLOCK);
  visibilitymap_pin(relation, block, &vmbuffer);
  LockBuffer(*buffer, BUFFER_LOCK_EXCLUSIVE);
  goto l3;
 }

 xmax = HeapTupleHeaderGetRawXmax(tuple->t_data);
 old_infomask = tuple->t_data->t_infomask;
 MultiXactIdSetOldestMember();






 compute_new_xmax_infomask(xmax, old_infomask, tuple->t_data->t_infomask2,
         GetCurrentTransactionId(), mode, 0,
         &xid, &new_infomask, &new_infomask2);

 START_CRIT_SECTION();
 tuple->t_data->t_infomask &= ~HEAP_XMAX_BITS;
 tuple->t_data->t_infomask2 &= ~HEAP_KEYS_UPDATED;
 tuple->t_data->t_infomask |= new_infomask;
 tuple->t_data->t_infomask2 |= new_infomask2;
 if (HEAP_XMAX_IS_LOCKED_ONLY(new_infomask))
  HeapTupleHeaderClearHotUpdated(tuple->t_data);
 HeapTupleHeaderSetXmax(tuple->t_data, xid);
 if (HEAP_XMAX_IS_LOCKED_ONLY(new_infomask))
  tuple->t_data->t_ctid = *tid;


 if (PageIsAllVisible(page) &&
  visibilitymap_clear(relation, block, vmbuffer,
       VISIBILITYMAP_ALL_FROZEN))
  cleared_all_frozen = 1;


 MarkBufferDirty(*buffer);
 if (RelationNeedsWAL(relation))
 {
  xl_heap_lock xlrec;
  XLogRecPtr recptr;

  XLogBeginInsert();
  XLogRegisterBuffer(0, *buffer, REGBUF_STANDARD);

  xlrec.offnum = ItemPointerGetOffsetNumber(&tuple->t_self);
  xlrec.locking_xid = xid;
  xlrec.infobits_set = compute_infobits(new_infomask,
             tuple->t_data->t_infomask2);
  xlrec.flags = cleared_all_frozen ? XLH_LOCK_ALL_FROZEN_CLEARED : 0;
  XLogRegisterData((char *) &xlrec, SizeOfHeapLock);



  recptr = XLogInsert(RM_HEAP_ID, XLOG_HEAP_LOCK);

  PageSetLSN(page, recptr);
 }

 END_CRIT_SECTION();

 result = TM_Ok;

out_locked:
 LockBuffer(*buffer, BUFFER_LOCK_UNLOCK);

out_unlocked:
 if (BufferIsValid(vmbuffer))
  ReleaseBuffer(vmbuffer);
 if (have_tuple_lock)
  UnlockTupleTuplock(relation, tid, mode);

 return result;
}
