
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* replication_slots; } ;
struct TYPE_5__ {scalar_t__ persistency; } ;
struct TYPE_6__ {scalar_t__ active_pid; int mutex; int active_cv; TYPE_1__ data; int in_use; } ;
typedef TYPE_2__ ReplicationSlot ;


 int Assert (int) ;
 int ConditionVariableBroadcast (int *) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 scalar_t__ MyProcPid ;
 int * MyReplicationSlot ;
 scalar_t__ RS_TEMPORARY ;
 int ReplicationSlotControlLock ;
 TYPE_4__* ReplicationSlotCtl ;
 int ReplicationSlotDropPtr (TYPE_2__*) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int max_replication_slots ;

void
ReplicationSlotCleanup(void)
{
 int i;

 Assert(MyReplicationSlot == ((void*)0));

restart:
 LWLockAcquire(ReplicationSlotControlLock, LW_SHARED);
 for (i = 0; i < max_replication_slots; i++)
 {
  ReplicationSlot *s = &ReplicationSlotCtl->replication_slots[i];

  if (!s->in_use)
   continue;

  SpinLockAcquire(&s->mutex);
  if (s->active_pid == MyProcPid)
  {
   Assert(s->data.persistency == RS_TEMPORARY);
   SpinLockRelease(&s->mutex);
   LWLockRelease(ReplicationSlotControlLock);

   ReplicationSlotDropPtr(s);

   ConditionVariableBroadcast(&s->active_cv);
   goto restart;
  }
  else
   SpinLockRelease(&s->mutex);
 }

 LWLockRelease(ReplicationSlotControlLock);
}
