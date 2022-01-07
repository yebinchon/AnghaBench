
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ XLogRecPtr ;
struct TYPE_4__ {scalar_t__ restart_lsn; } ;
struct TYPE_5__ {int mutex; TYPE_1__ data; } ;
typedef TYPE_2__ ReplicationSlot ;


 int Assert (int) ;
 scalar_t__ InvalidXLogRecPtr ;
 TYPE_2__* MyReplicationSlot ;
 int ReplicationSlotMarkDirty () ;
 int ReplicationSlotsComputeRequiredLSN () ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;

__attribute__((used)) static void
PhysicalConfirmReceivedLocation(XLogRecPtr lsn)
{
 bool changed = 0;
 ReplicationSlot *slot = MyReplicationSlot;

 Assert(lsn != InvalidXLogRecPtr);
 SpinLockAcquire(&slot->mutex);
 if (slot->data.restart_lsn != lsn)
 {
  changed = 1;
  slot->data.restart_lsn = lsn;
 }
 SpinLockRelease(&slot->mutex);

 if (changed)
 {
  ReplicationSlotMarkDirty();
  ReplicationSlotsComputeRequiredLSN();
 }







}
