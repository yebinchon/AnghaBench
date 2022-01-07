
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* TransactionId ;
struct TYPE_7__ {int xmin; } ;
struct TYPE_5__ {void* xmin; void* catalog_xmin; } ;
struct TYPE_6__ {int mutex; void* effective_catalog_xmin; TYPE_1__ data; void* effective_xmin; } ;
typedef TYPE_2__ ReplicationSlot ;


 int InvalidTransactionId ;
 TYPE_4__* MyPgXact ;
 TYPE_2__* MyReplicationSlot ;
 int ReplicationSlotMarkDirty () ;
 int ReplicationSlotsComputeRequiredXmin (int) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int TransactionIdIsNormal (void*) ;
 scalar_t__ TransactionIdPrecedes (void*,void*) ;

__attribute__((used)) static void
PhysicalReplicationSlotNewXmin(TransactionId feedbackXmin, TransactionId feedbackCatalogXmin)
{
 bool changed = 0;
 ReplicationSlot *slot = MyReplicationSlot;

 SpinLockAcquire(&slot->mutex);
 MyPgXact->xmin = InvalidTransactionId;






 if (!TransactionIdIsNormal(slot->data.xmin) ||
  !TransactionIdIsNormal(feedbackXmin) ||
  TransactionIdPrecedes(slot->data.xmin, feedbackXmin))
 {
  changed = 1;
  slot->data.xmin = feedbackXmin;
  slot->effective_xmin = feedbackXmin;
 }
 if (!TransactionIdIsNormal(slot->data.catalog_xmin) ||
  !TransactionIdIsNormal(feedbackCatalogXmin) ||
  TransactionIdPrecedes(slot->data.catalog_xmin, feedbackCatalogXmin))
 {
  changed = 1;
  slot->data.catalog_xmin = feedbackCatalogXmin;
  slot->effective_catalog_xmin = feedbackCatalogXmin;
 }
 SpinLockRelease(&slot->mutex);

 if (changed)
 {
  ReplicationSlotMarkDirty();
  ReplicationSlotsComputeRequiredXmin(0);
 }
}
