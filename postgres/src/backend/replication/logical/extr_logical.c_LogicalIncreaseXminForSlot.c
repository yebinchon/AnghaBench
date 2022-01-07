
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ XLogRecPtr ;
typedef void* TransactionId ;
struct TYPE_4__ {scalar_t__ confirmed_flush; int catalog_xmin; } ;
struct TYPE_5__ {scalar_t__ candidate_xmin_lsn; TYPE_1__ data; int mutex; void* candidate_catalog_xmin; } ;
typedef TYPE_2__ ReplicationSlot ;


 int Assert (int ) ;
 scalar_t__ InvalidXLogRecPtr ;
 int LogicalConfirmReceivedLocation (scalar_t__) ;
 TYPE_2__* MyReplicationSlot ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 scalar_t__ TransactionIdPrecedesOrEquals (void*,int ) ;

void
LogicalIncreaseXminForSlot(XLogRecPtr current_lsn, TransactionId xmin)
{
 bool updated_xmin = 0;
 ReplicationSlot *slot;

 slot = MyReplicationSlot;

 Assert(slot != ((void*)0));

 SpinLockAcquire(&slot->mutex);





 if (TransactionIdPrecedesOrEquals(xmin, slot->data.catalog_xmin))
 {
 }






 else if (current_lsn <= slot->data.confirmed_flush)
 {
  slot->candidate_catalog_xmin = xmin;
  slot->candidate_xmin_lsn = current_lsn;


  updated_xmin = 1;
 }





 else if (slot->candidate_xmin_lsn == InvalidXLogRecPtr)
 {
  slot->candidate_catalog_xmin = xmin;
  slot->candidate_xmin_lsn = current_lsn;
 }
 SpinLockRelease(&slot->mutex);


 if (updated_xmin)
  LogicalConfirmReceivedLocation(slot->data.confirmed_flush);
}
