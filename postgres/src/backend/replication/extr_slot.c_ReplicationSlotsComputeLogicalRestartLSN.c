
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ XLogRecPtr ;
struct TYPE_7__ {TYPE_2__* replication_slots; } ;
struct TYPE_5__ {scalar_t__ restart_lsn; } ;
struct TYPE_6__ {int mutex; TYPE_1__ data; int in_use; } ;
typedef TYPE_2__ ReplicationSlot ;


 scalar_t__ InvalidXLogRecPtr ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 int ReplicationSlotControlLock ;
 TYPE_4__* ReplicationSlotCtl ;
 int SlotIsLogical (TYPE_2__*) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int max_replication_slots ;

XLogRecPtr
ReplicationSlotsComputeLogicalRestartLSN(void)
{
 XLogRecPtr result = InvalidXLogRecPtr;
 int i;

 if (max_replication_slots <= 0)
  return InvalidXLogRecPtr;

 LWLockAcquire(ReplicationSlotControlLock, LW_SHARED);

 for (i = 0; i < max_replication_slots; i++)
 {
  ReplicationSlot *s;
  XLogRecPtr restart_lsn;

  s = &ReplicationSlotCtl->replication_slots[i];


  if (!s->in_use)
   continue;


  if (!SlotIsLogical(s))
   continue;


  SpinLockAcquire(&s->mutex);
  restart_lsn = s->data.restart_lsn;
  SpinLockRelease(&s->mutex);

  if (result == InvalidXLogRecPtr ||
   restart_lsn < result)
   result = restart_lsn;
 }

 LWLockRelease(ReplicationSlotControlLock);

 return result;
}
