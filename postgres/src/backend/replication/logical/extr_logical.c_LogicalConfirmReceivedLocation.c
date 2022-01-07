
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ XLogRecPtr ;
struct TYPE_3__ {scalar_t__ catalog_xmin; scalar_t__ restart_lsn; scalar_t__ confirmed_flush; } ;
struct TYPE_4__ {scalar_t__ candidate_xmin_lsn; scalar_t__ candidate_restart_valid; scalar_t__ candidate_catalog_xmin; scalar_t__ candidate_restart_lsn; scalar_t__ effective_catalog_xmin; int mutex; TYPE_1__ data; } ;


 int Assert (int) ;
 int DEBUG1 ;
 scalar_t__ InvalidTransactionId ;
 scalar_t__ InvalidXLogRecPtr ;
 TYPE_2__* MyReplicationSlot ;
 int ReplicationSlotMarkDirty () ;
 int ReplicationSlotSave () ;
 int ReplicationSlotsComputeRequiredLSN () ;
 int ReplicationSlotsComputeRequiredXmin (int) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 scalar_t__ TransactionIdIsValid (scalar_t__) ;
 int elog (int ,char*,int,int) ;

void
LogicalConfirmReceivedLocation(XLogRecPtr lsn)
{
 Assert(lsn != InvalidXLogRecPtr);


 if (MyReplicationSlot->candidate_xmin_lsn != InvalidXLogRecPtr ||
  MyReplicationSlot->candidate_restart_valid != InvalidXLogRecPtr)
 {
  bool updated_xmin = 0;
  bool updated_restart = 0;

  SpinLockAcquire(&MyReplicationSlot->mutex);

  MyReplicationSlot->data.confirmed_flush = lsn;


  if (MyReplicationSlot->candidate_xmin_lsn != InvalidXLogRecPtr &&
   MyReplicationSlot->candidate_xmin_lsn <= lsn)
  {
   if (TransactionIdIsValid(MyReplicationSlot->candidate_catalog_xmin) &&
    MyReplicationSlot->data.catalog_xmin != MyReplicationSlot->candidate_catalog_xmin)
   {
    MyReplicationSlot->data.catalog_xmin = MyReplicationSlot->candidate_catalog_xmin;
    MyReplicationSlot->candidate_catalog_xmin = InvalidTransactionId;
    MyReplicationSlot->candidate_xmin_lsn = InvalidXLogRecPtr;
    updated_xmin = 1;
   }
  }

  if (MyReplicationSlot->candidate_restart_valid != InvalidXLogRecPtr &&
   MyReplicationSlot->candidate_restart_valid <= lsn)
  {
   Assert(MyReplicationSlot->candidate_restart_lsn != InvalidXLogRecPtr);

   MyReplicationSlot->data.restart_lsn = MyReplicationSlot->candidate_restart_lsn;
   MyReplicationSlot->candidate_restart_lsn = InvalidXLogRecPtr;
   MyReplicationSlot->candidate_restart_valid = InvalidXLogRecPtr;
   updated_restart = 1;
  }

  SpinLockRelease(&MyReplicationSlot->mutex);


  if (updated_xmin || updated_restart)
  {
   ReplicationSlotMarkDirty();
   ReplicationSlotSave();
   elog(DEBUG1, "updated xmin: %u restart: %u", updated_xmin, updated_restart);
  }







  if (updated_xmin)
  {
   SpinLockAcquire(&MyReplicationSlot->mutex);
   MyReplicationSlot->effective_catalog_xmin = MyReplicationSlot->data.catalog_xmin;
   SpinLockRelease(&MyReplicationSlot->mutex);

   ReplicationSlotsComputeRequiredXmin(0);
   ReplicationSlotsComputeRequiredLSN();
  }
 }
 else
 {
  SpinLockAcquire(&MyReplicationSlot->mutex);
  MyReplicationSlot->data.confirmed_flush = lsn;
  SpinLockRelease(&MyReplicationSlot->mutex);
 }
}
