
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* replication_slots; } ;
struct TYPE_5__ {scalar_t__ database; } ;
struct TYPE_6__ {scalar_t__ active_pid; int mutex; TYPE_1__ data; int in_use; } ;
typedef TYPE_2__ ReplicationSlot ;
typedef scalar_t__ Oid ;


 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 int ReplicationSlotControlLock ;
 TYPE_4__* ReplicationSlotCtl ;
 int SlotIsLogical (TYPE_2__*) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int max_replication_slots ;

bool
ReplicationSlotsCountDBSlots(Oid dboid, int *nslots, int *nactive)
{
 int i;

 *nslots = *nactive = 0;

 if (max_replication_slots <= 0)
  return 0;

 LWLockAcquire(ReplicationSlotControlLock, LW_SHARED);
 for (i = 0; i < max_replication_slots; i++)
 {
  ReplicationSlot *s;

  s = &ReplicationSlotCtl->replication_slots[i];


  if (!s->in_use)
   continue;


  if (!SlotIsLogical(s))
   continue;


  if (s->data.database != dboid)
   continue;


  SpinLockAcquire(&s->mutex);
  (*nslots)++;
  if (s->active_pid != 0)
   (*nactive)++;
  SpinLockRelease(&s->mutex);
 }
 LWLockRelease(ReplicationSlotControlLock);

 if (*nslots > 0)
  return 1;
 return 0;
}
