
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ XLogRecPtr ;
struct TYPE_6__ {TYPE_2__* replication_slots; } ;
struct TYPE_4__ {scalar_t__ restart_lsn; } ;
struct TYPE_5__ {int mutex; TYPE_1__ data; int in_use; } ;
typedef TYPE_2__ ReplicationSlot ;


 int Assert (int ) ;
 scalar_t__ InvalidXLogRecPtr ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 int ReplicationSlotControlLock ;
 TYPE_3__* ReplicationSlotCtl ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int XLogSetReplicationSlotMinimumLSN (scalar_t__) ;
 int max_replication_slots ;

void
ReplicationSlotsComputeRequiredLSN(void)
{
 int i;
 XLogRecPtr min_required = InvalidXLogRecPtr;

 Assert(ReplicationSlotCtl != ((void*)0));

 LWLockAcquire(ReplicationSlotControlLock, LW_SHARED);
 for (i = 0; i < max_replication_slots; i++)
 {
  ReplicationSlot *s = &ReplicationSlotCtl->replication_slots[i];
  XLogRecPtr restart_lsn;

  if (!s->in_use)
   continue;

  SpinLockAcquire(&s->mutex);
  restart_lsn = s->data.restart_lsn;
  SpinLockRelease(&s->mutex);

  if (restart_lsn != InvalidXLogRecPtr &&
   (min_required == InvalidXLogRecPtr ||
    restart_lsn < min_required))
   min_required = restart_lsn;
 }
 LWLockRelease(ReplicationSlotControlLock);

 XLogSetReplicationSlotMinimumLSN(min_required);
}
