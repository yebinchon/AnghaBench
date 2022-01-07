
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int flags; int infobits_set; int xmax; int offnum; } ;
typedef TYPE_1__ xl_heap_lock_updated ;
typedef int uint16 ;
typedef int XLogRecPtr ;
typedef int TransactionId ;
struct TYPE_17__ {int t_infomask; int t_infomask2; int t_ctid; } ;
struct TYPE_16__ {TYPE_7__* t_data; int t_self; } ;
struct TYPE_15__ {int xid; int status; } ;
typedef scalar_t__ TM_Result ;
typedef int Relation ;
typedef int Page ;
typedef int MultiXactStatus ;
typedef TYPE_2__ MultiXactMember ;
typedef int LockTupleMode ;
typedef int ItemPointerData ;
typedef int * ItemPointer ;
typedef TYPE_3__ HeapTupleData ;
typedef scalar_t__ Buffer ;
typedef int BlockNumber ;


 int Assert (int) ;
 int BUFFER_LOCK_EXCLUSIVE ;
 int BUFFER_LOCK_UNLOCK ;
 int BufferGetPage (scalar_t__) ;
 int CHECK_FOR_INTERRUPTS () ;
 int END_CRIT_SECTION () ;
 int ERROR ;
 int GetMultiXactIdMembers (int ,TYPE_2__**,int,scalar_t__) ;
 int HEAP_KEYS_UPDATED ;
 int HEAP_LOCKED_UPGRADED (int) ;
 int HEAP_XMAX_BITS ;
 int HEAP_XMAX_INVALID ;
 scalar_t__ HEAP_XMAX_IS_EXCL_LOCKED (int) ;
 scalar_t__ HEAP_XMAX_IS_KEYSHR_LOCKED (int) ;
 scalar_t__ HEAP_XMAX_IS_LOCKED_ONLY (int) ;
 int HEAP_XMAX_IS_MULTI ;
 scalar_t__ HEAP_XMAX_IS_SHR_LOCKED (int) ;
 int HeapTupleHeaderGetRawXmax (TYPE_7__*) ;
 int HeapTupleHeaderGetUpdateXid (TYPE_7__*) ;
 int HeapTupleHeaderGetXmin (TYPE_7__*) ;
 scalar_t__ HeapTupleHeaderIndicatesMovedPartitions (TYPE_7__*) ;
 scalar_t__ HeapTupleHeaderIsOnlyLocked (TYPE_7__*) ;
 int HeapTupleHeaderSetXmax (TYPE_7__*,int ) ;
 scalar_t__ InvalidBuffer ;
 int InvalidTransactionId ;
 int ItemPointerCopy (int *,int *) ;
 scalar_t__ ItemPointerEquals (int *,int *) ;
 int ItemPointerGetBlockNumber (int *) ;
 int ItemPointerGetOffsetNumber (int *) ;
 int LockBuffer (scalar_t__,int ) ;
 int MarkBufferDirty (scalar_t__) ;
 int MultiXactStatusForKeyShare ;
 int MultiXactStatusForNoKeyUpdate ;
 int MultiXactStatusForShare ;
 int MultiXactStatusForUpdate ;
 int MultiXactStatusNoKeyUpdate ;
 int MultiXactStatusUpdate ;
 scalar_t__ PageIsAllVisible (int ) ;
 int PageSetLSN (int ,int ) ;
 int REGBUF_STANDARD ;
 int RM_HEAP2_ID ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int ReleaseBuffer (scalar_t__) ;
 int START_CRIT_SECTION () ;
 int SizeOfHeapLockUpdated ;
 int SnapshotAny ;
 scalar_t__ TM_Ok ;
 scalar_t__ TM_SelfModified ;
 scalar_t__ TransactionIdDidAbort (int ) ;
 int TransactionIdEquals (int ,int ) ;
 scalar_t__ TransactionIdIsValid (int ) ;
 int UnlockReleaseBuffer (scalar_t__) ;
 int VISIBILITYMAP_ALL_FROZEN ;
 int XLH_LOCK_ALL_FROZEN_CLEARED ;
 int XLOG_HEAP2_LOCK_UPDATED ;
 int XLTW_LockUpdated ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBuffer (int ,scalar_t__,int ) ;
 int XLogRegisterData (char*,int ) ;
 int XactLockTableWait (int ,int ,int *,int ) ;
 int compute_infobits (int,int) ;
 int compute_new_xmax_infomask (int ,int,int,int ,int ,int,int *,int*,int*) ;
 int elog (int ,char*) ;
 int heap_fetch (int ,int ,TYPE_3__*,scalar_t__*) ;
 int pfree (TYPE_2__*) ;
 scalar_t__ test_lockmode_for_conflict (int ,int ,int ,TYPE_3__*,int*) ;
 scalar_t__ visibilitymap_clear (int ,int ,scalar_t__,int ) ;
 int visibilitymap_pin (int ,int ,scalar_t__*) ;

__attribute__((used)) static TM_Result
heap_lock_updated_tuple_rec(Relation rel, ItemPointer tid, TransactionId xid,
       LockTupleMode mode)
{
 TM_Result result;
 ItemPointerData tupid;
 HeapTupleData mytup;
 Buffer buf;
 uint16 new_infomask,
    new_infomask2,
    old_infomask,
    old_infomask2;
 TransactionId xmax,
    new_xmax;
 TransactionId priorXmax = InvalidTransactionId;
 bool cleared_all_frozen = 0;
 bool pinned_desired_page;
 Buffer vmbuffer = InvalidBuffer;
 BlockNumber block;

 ItemPointerCopy(tid, &tupid);

 for (;;)
 {
  new_infomask = 0;
  new_xmax = InvalidTransactionId;
  block = ItemPointerGetBlockNumber(&tupid);
  ItemPointerCopy(&tupid, &(mytup.t_self));

  if (!heap_fetch(rel, SnapshotAny, &mytup, &buf))
  {







   result = TM_Ok;
   goto out_unlocked;
  }

l4:
  CHECK_FOR_INTERRUPTS();







  if (PageIsAllVisible(BufferGetPage(buf)))
  {
   visibilitymap_pin(rel, block, &vmbuffer);
   pinned_desired_page = 1;
  }
  else
   pinned_desired_page = 0;

  LockBuffer(buf, BUFFER_LOCK_EXCLUSIVE);
  if (!pinned_desired_page && PageIsAllVisible(BufferGetPage(buf)))
  {
   LockBuffer(buf, BUFFER_LOCK_UNLOCK);
   visibilitymap_pin(rel, block, &vmbuffer);
   LockBuffer(buf, BUFFER_LOCK_EXCLUSIVE);
  }





  if (TransactionIdIsValid(priorXmax) &&
   !TransactionIdEquals(HeapTupleHeaderGetXmin(mytup.t_data),
         priorXmax))
  {
   result = TM_Ok;
   goto out_locked;
  }






  if (TransactionIdDidAbort(HeapTupleHeaderGetXmin(mytup.t_data)))
  {
   result = TM_Ok;
   goto out_locked;
  }

  old_infomask = mytup.t_data->t_infomask;
  old_infomask2 = mytup.t_data->t_infomask2;
  xmax = HeapTupleHeaderGetRawXmax(mytup.t_data);







  if (!(old_infomask & HEAP_XMAX_INVALID))
  {
   TransactionId rawxmax;
   bool needwait;

   rawxmax = HeapTupleHeaderGetRawXmax(mytup.t_data);
   if (old_infomask & HEAP_XMAX_IS_MULTI)
   {
    int nmembers;
    int i;
    MultiXactMember *members;
    Assert(!HEAP_LOCKED_UPGRADED(mytup.t_data->t_infomask));

    nmembers = GetMultiXactIdMembers(rawxmax, &members, 0,
             HEAP_XMAX_IS_LOCKED_ONLY(old_infomask));
    for (i = 0; i < nmembers; i++)
    {
     result = test_lockmode_for_conflict(members[i].status,
              members[i].xid,
              mode,
              &mytup,
              &needwait);
     if (result == TM_SelfModified)
     {
      pfree(members);
      goto next;
     }

     if (needwait)
     {
      LockBuffer(buf, BUFFER_LOCK_UNLOCK);
      XactLockTableWait(members[i].xid, rel,
            &mytup.t_self,
            XLTW_LockUpdated);
      pfree(members);
      goto l4;
     }
     if (result != TM_Ok)
     {
      pfree(members);
      goto out_locked;
     }
    }
    if (members)
     pfree(members);
   }
   else
   {
    MultiXactStatus status;





    if (HEAP_XMAX_IS_LOCKED_ONLY(old_infomask))
    {
     if (HEAP_XMAX_IS_KEYSHR_LOCKED(old_infomask))
      status = MultiXactStatusForKeyShare;
     else if (HEAP_XMAX_IS_SHR_LOCKED(old_infomask))
      status = MultiXactStatusForShare;
     else if (HEAP_XMAX_IS_EXCL_LOCKED(old_infomask))
     {
      if (old_infomask2 & HEAP_KEYS_UPDATED)
       status = MultiXactStatusForUpdate;
      else
       status = MultiXactStatusForNoKeyUpdate;
     }
     else
     {





      elog(ERROR, "invalid lock status in tuple");
     }
    }
    else
    {

     if (old_infomask2 & HEAP_KEYS_UPDATED)
      status = MultiXactStatusUpdate;
     else
      status = MultiXactStatusNoKeyUpdate;
    }

    result = test_lockmode_for_conflict(status, rawxmax, mode,
             &mytup, &needwait);
    if (result == TM_SelfModified)
     goto next;

    if (needwait)
    {
     LockBuffer(buf, BUFFER_LOCK_UNLOCK);
     XactLockTableWait(rawxmax, rel, &mytup.t_self,
           XLTW_LockUpdated);
     goto l4;
    }
    if (result != TM_Ok)
    {
     goto out_locked;
    }
   }
  }


  compute_new_xmax_infomask(xmax, old_infomask, mytup.t_data->t_infomask2,
          xid, mode, 0,
          &new_xmax, &new_infomask, &new_infomask2);

  if (PageIsAllVisible(BufferGetPage(buf)) &&
   visibilitymap_clear(rel, block, vmbuffer,
        VISIBILITYMAP_ALL_FROZEN))
   cleared_all_frozen = 1;

  START_CRIT_SECTION();


  HeapTupleHeaderSetXmax(mytup.t_data, new_xmax);
  mytup.t_data->t_infomask &= ~HEAP_XMAX_BITS;
  mytup.t_data->t_infomask2 &= ~HEAP_KEYS_UPDATED;
  mytup.t_data->t_infomask |= new_infomask;
  mytup.t_data->t_infomask2 |= new_infomask2;

  MarkBufferDirty(buf);


  if (RelationNeedsWAL(rel))
  {
   xl_heap_lock_updated xlrec;
   XLogRecPtr recptr;
   Page page = BufferGetPage(buf);

   XLogBeginInsert();
   XLogRegisterBuffer(0, buf, REGBUF_STANDARD);

   xlrec.offnum = ItemPointerGetOffsetNumber(&mytup.t_self);
   xlrec.xmax = new_xmax;
   xlrec.infobits_set = compute_infobits(new_infomask, new_infomask2);
   xlrec.flags =
    cleared_all_frozen ? XLH_LOCK_ALL_FROZEN_CLEARED : 0;

   XLogRegisterData((char *) &xlrec, SizeOfHeapLockUpdated);

   recptr = XLogInsert(RM_HEAP2_ID, XLOG_HEAP2_LOCK_UPDATED);

   PageSetLSN(page, recptr);
  }

  END_CRIT_SECTION();

next:

  if (mytup.t_data->t_infomask & HEAP_XMAX_INVALID ||
   HeapTupleHeaderIndicatesMovedPartitions(mytup.t_data) ||
   ItemPointerEquals(&mytup.t_self, &mytup.t_data->t_ctid) ||
   HeapTupleHeaderIsOnlyLocked(mytup.t_data))
  {
   result = TM_Ok;
   goto out_locked;
  }


  priorXmax = HeapTupleHeaderGetUpdateXid(mytup.t_data);
  ItemPointerCopy(&(mytup.t_data->t_ctid), &tupid);
  UnlockReleaseBuffer(buf);
 }

 result = TM_Ok;

out_locked:
 UnlockReleaseBuffer(buf);

out_unlocked:
 if (vmbuffer != InvalidBuffer)
  ReleaseBuffer(vmbuffer);

 return result;
}
