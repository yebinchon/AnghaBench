
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int vacuumFlags; } ;
struct TYPE_5__ {scalar_t__ persistency; int xmin; } ;
struct TYPE_6__ {scalar_t__ active_pid; int active_cv; int mutex; TYPE_1__ data; int effective_xmin; } ;
typedef TYPE_2__ ReplicationSlot ;


 int Assert (int) ;
 int ConditionVariableBroadcast (int *) ;
 int InvalidTransactionId ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 TYPE_4__* MyPgXact ;
 TYPE_2__* MyReplicationSlot ;
 int PROC_IN_LOGICAL_DECODING ;
 int ProcArrayLock ;
 scalar_t__ RS_EPHEMERAL ;
 scalar_t__ RS_PERSISTENT ;
 int ReplicationSlotDropAcquired () ;
 int ReplicationSlotsComputeRequiredXmin (int) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 scalar_t__ TransactionIdIsValid (int ) ;

void
ReplicationSlotRelease(void)
{
 ReplicationSlot *slot = MyReplicationSlot;

 Assert(slot != ((void*)0) && slot->active_pid != 0);

 if (slot->data.persistency == RS_EPHEMERAL)
 {





  ReplicationSlotDropAcquired();
 }







 if (!TransactionIdIsValid(slot->data.xmin) &&
  TransactionIdIsValid(slot->effective_xmin))
 {
  SpinLockAcquire(&slot->mutex);
  slot->effective_xmin = InvalidTransactionId;
  SpinLockRelease(&slot->mutex);
  ReplicationSlotsComputeRequiredXmin(0);
 }

 if (slot->data.persistency == RS_PERSISTENT)
 {




  SpinLockAcquire(&slot->mutex);
  slot->active_pid = 0;
  SpinLockRelease(&slot->mutex);
  ConditionVariableBroadcast(&slot->active_cv);
 }

 MyReplicationSlot = ((void*)0);


 LWLockAcquire(ProcArrayLock, LW_EXCLUSIVE);
 MyPgXact->vacuumFlags &= ~PROC_IN_LOGICAL_DECODING;
 LWLockRelease(ProcArrayLock);
}
