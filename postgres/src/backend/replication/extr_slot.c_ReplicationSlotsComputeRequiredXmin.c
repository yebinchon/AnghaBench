
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_4__ {TYPE_1__* replication_slots; } ;
struct TYPE_3__ {int mutex; int effective_catalog_xmin; int effective_xmin; int in_use; } ;
typedef TYPE_1__ ReplicationSlot ;


 int Assert (int ) ;
 int InvalidTransactionId ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 int ProcArraySetReplicationSlotXmin (int ,int ,int) ;
 int ReplicationSlotControlLock ;
 TYPE_2__* ReplicationSlotCtl ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 scalar_t__ TransactionIdIsValid (int ) ;
 scalar_t__ TransactionIdPrecedes (int ,int ) ;
 int max_replication_slots ;

void
ReplicationSlotsComputeRequiredXmin(bool already_locked)
{
 int i;
 TransactionId agg_xmin = InvalidTransactionId;
 TransactionId agg_catalog_xmin = InvalidTransactionId;

 Assert(ReplicationSlotCtl != ((void*)0));

 LWLockAcquire(ReplicationSlotControlLock, LW_SHARED);

 for (i = 0; i < max_replication_slots; i++)
 {
  ReplicationSlot *s = &ReplicationSlotCtl->replication_slots[i];
  TransactionId effective_xmin;
  TransactionId effective_catalog_xmin;

  if (!s->in_use)
   continue;

  SpinLockAcquire(&s->mutex);
  effective_xmin = s->effective_xmin;
  effective_catalog_xmin = s->effective_catalog_xmin;
  SpinLockRelease(&s->mutex);


  if (TransactionIdIsValid(effective_xmin) &&
   (!TransactionIdIsValid(agg_xmin) ||
    TransactionIdPrecedes(effective_xmin, agg_xmin)))
   agg_xmin = effective_xmin;


  if (TransactionIdIsValid(effective_catalog_xmin) &&
   (!TransactionIdIsValid(agg_catalog_xmin) ||
    TransactionIdPrecedes(effective_catalog_xmin, agg_catalog_xmin)))
   agg_catalog_xmin = effective_catalog_xmin;
 }

 LWLockRelease(ReplicationSlotControlLock);

 ProcArraySetReplicationSlotXmin(agg_xmin, agg_catalog_xmin, already_locked);
}
