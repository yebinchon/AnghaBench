
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_15__ ;


typedef int uint8 ;
struct TYPE_23__ {int tts_tableOid; } ;
typedef TYPE_2__ TupleTableSlot ;
typedef int TransactionId ;
struct TYPE_26__ {int t_tableOid; TYPE_15__* t_data; void* t_self; } ;
struct TYPE_22__ {TYPE_5__ tupdata; } ;
struct TYPE_27__ {TYPE_1__ base; } ;
struct TYPE_25__ {int xmax; int xmin; } ;
struct TYPE_24__ {int traversed; scalar_t__ cmax; int xmax; void* ctid; } ;
struct TYPE_21__ {void* t_ctid; } ;
typedef scalar_t__ TM_Result ;
typedef TYPE_3__ TM_FailureData ;
typedef TYPE_4__ SnapshotData ;
typedef int Snapshot ;
typedef int Relation ;
typedef int LockWaitPolicy ;
typedef int LockTupleMode ;
typedef void** ItemPointer ;
typedef TYPE_5__* HeapTuple ;
typedef scalar_t__ CommandId ;
typedef TYPE_6__ BufferHeapTupleTableSlot ;
typedef int Buffer ;


 int Assert (int) ;
 scalar_t__ BufferIsValid (int ) ;
 int ConditionalXactLockTableWait (int ) ;
 int ERRCODE_DATA_CORRUPTED ;
 int ERRCODE_LOCK_NOT_AVAILABLE ;
 int ERRCODE_T_R_SERIALIZATION_FAILURE ;
 int ERROR ;
 int ExecStorePinnedBufferHeapTuple (TYPE_5__*,TYPE_2__*,int ) ;
 scalar_t__ HeapTupleHeaderGetCmin (TYPE_15__*) ;
 int HeapTupleHeaderGetUpdateXid (TYPE_15__*) ;
 int HeapTupleHeaderGetXmin (TYPE_15__*) ;
 int HeapTupleHeaderIsSpeculative (TYPE_15__*) ;
 int InitDirtySnapshot (TYPE_4__) ;
 scalar_t__ ItemPointerEquals (void**,void**) ;
 scalar_t__ ItemPointerIndicatesMovedPartitions (void**) ;



 int RelationGetRelationName (int ) ;
 int RelationGetRelid (int ) ;
 int ReleaseBuffer (int ) ;
 scalar_t__ TM_Deleted ;
 scalar_t__ TM_SelfModified ;
 scalar_t__ TM_Updated ;
 scalar_t__ TM_WouldBlock ;
 int TTS_IS_BUFFERTUPLE (TYPE_2__*) ;
 int TUPLE_LOCK_FLAG_FIND_LAST_VERSION ;
 int TUPLE_LOCK_FLAG_LOCK_UPDATE_IN_PROGRESS ;
 int TransactionIdEquals (int ,int ) ;
 scalar_t__ TransactionIdIsCurrentTransactionId (int ) ;
 scalar_t__ TransactionIdIsValid (int ) ;
 int XLTW_FetchUpdated ;
 int XactLockTableWait (int ,int ,void**,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int errmsg_internal (char*) ;
 scalar_t__ heap_fetch (int ,TYPE_4__*,TYPE_5__*,int *) ;
 scalar_t__ heap_lock_tuple (int ,TYPE_5__*,scalar_t__,int ,int ,int,int *,TYPE_3__*) ;

__attribute__((used)) static TM_Result
heapam_tuple_lock(Relation relation, ItemPointer tid, Snapshot snapshot,
      TupleTableSlot *slot, CommandId cid, LockTupleMode mode,
      LockWaitPolicy wait_policy, uint8 flags,
      TM_FailureData *tmfd)
{
 BufferHeapTupleTableSlot *bslot = (BufferHeapTupleTableSlot *) slot;
 TM_Result result;
 Buffer buffer;
 HeapTuple tuple = &bslot->base.tupdata;
 bool follow_updates;

 follow_updates = (flags & TUPLE_LOCK_FLAG_LOCK_UPDATE_IN_PROGRESS) != 0;
 tmfd->traversed = 0;

 Assert(TTS_IS_BUFFERTUPLE(slot));

tuple_lock_retry:
 tuple->t_self = *tid;
 result = heap_lock_tuple(relation, tuple, cid, mode, wait_policy,
        follow_updates, &buffer, tmfd);

 if (result == TM_Updated &&
  (flags & TUPLE_LOCK_FLAG_FIND_LAST_VERSION))
 {
  ReleaseBuffer(buffer);

  Assert(!HeapTupleHeaderIsSpeculative(tuple->t_data));

  if (!ItemPointerEquals(&tmfd->ctid, &tuple->t_self))
  {
   SnapshotData SnapshotDirty;
   TransactionId priorXmax;


   *tid = tmfd->ctid;

   priorXmax = tmfd->xmax;


   tmfd->traversed = 1;






   InitDirtySnapshot(SnapshotDirty);
   for (;;)
   {
    if (ItemPointerIndicatesMovedPartitions(tid))
     ereport(ERROR,
       (errcode(ERRCODE_T_R_SERIALIZATION_FAILURE),
        errmsg("tuple to be locked was already moved to another partition due to concurrent update")));

    tuple->t_self = *tid;
    if (heap_fetch(relation, &SnapshotDirty, tuple, &buffer))
    {
     if (!TransactionIdEquals(HeapTupleHeaderGetXmin(tuple->t_data),
            priorXmax))
     {
      ReleaseBuffer(buffer);
      return TM_Deleted;
     }


     if (TransactionIdIsValid(SnapshotDirty.xmin))
      ereport(ERROR,
        (errcode(ERRCODE_DATA_CORRUPTED),
         errmsg_internal("t_xmin is uncommitted in tuple to be updated")));





     if (TransactionIdIsValid(SnapshotDirty.xmax))
     {
      ReleaseBuffer(buffer);
      switch (wait_policy)
      {
       case 130:
        XactLockTableWait(SnapshotDirty.xmax,
              relation, &tuple->t_self,
              XLTW_FetchUpdated);
        break;
       case 128:
        if (!ConditionalXactLockTableWait(SnapshotDirty.xmax))

         return TM_WouldBlock;
        break;
       case 129:
        if (!ConditionalXactLockTableWait(SnapshotDirty.xmax))
         ereport(ERROR,
           (errcode(ERRCODE_LOCK_NOT_AVAILABLE),
            errmsg("could not obtain lock on row in relation \"%s\"",
             RelationGetRelationName(relation))));
        break;
      }
      continue;
     }
     if (TransactionIdIsCurrentTransactionId(priorXmax) &&
      HeapTupleHeaderGetCmin(tuple->t_data) >= cid)
     {
      tmfd->xmax = priorXmax;





      tmfd->cmax = HeapTupleHeaderGetCmin(tuple->t_data);
      ReleaseBuffer(buffer);
      return TM_SelfModified;
     }




     ReleaseBuffer(buffer);
     goto tuple_lock_retry;
    }






    if (tuple->t_data == ((void*)0))
    {
     return TM_Deleted;
    }




    if (!TransactionIdEquals(HeapTupleHeaderGetXmin(tuple->t_data),
           priorXmax))
    {
     if (BufferIsValid(buffer))
      ReleaseBuffer(buffer);
     return TM_Deleted;
    }
    if (ItemPointerEquals(&tuple->t_self, &tuple->t_data->t_ctid))
    {

     if (BufferIsValid(buffer))
      ReleaseBuffer(buffer);
     return TM_Deleted;
    }


    *tid = tuple->t_data->t_ctid;

    priorXmax = HeapTupleHeaderGetUpdateXid(tuple->t_data);
    if (BufferIsValid(buffer))
     ReleaseBuffer(buffer);

   }
  }
  else
  {

   return TM_Deleted;
  }
 }

 slot->tts_tableOid = RelationGetRelid(relation);
 tuple->t_tableOid = slot->tts_tableOid;


 ExecStorePinnedBufferHeapTuple(tuple, slot, buffer);

 return result;
}
