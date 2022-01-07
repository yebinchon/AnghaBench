
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* replication_slots; } ;
struct TYPE_5__ {int name; } ;
struct TYPE_6__ {int active_pid; int active_cv; int mutex; TYPE_1__ data; scalar_t__ in_use; } ;
typedef TYPE_2__ ReplicationSlot ;


 int Assert (int ) ;
 int ConditionVariableBroadcast (int *) ;
 int ConditionVariableCancelSleep () ;
 int ConditionVariablePrepareToSleep (int *) ;
 int ConditionVariableSleep (int *,int ) ;
 int ERRCODE_OBJECT_IN_USE ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 scalar_t__ IsUnderPostmaster ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 int MyProcPid ;
 TYPE_2__* MyReplicationSlot ;
 int NameStr (int ) ;
 int ReplicationSlotControlLock ;
 TYPE_3__* ReplicationSlotCtl ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int WAIT_EVENT_REPLICATION_SLOT_DROP ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,...) ;
 int max_replication_slots ;
 scalar_t__ strcmp (char const*,int ) ;

void
ReplicationSlotAcquire(const char *name, bool nowait)
{
 ReplicationSlot *slot;
 int active_pid;
 int i;

retry:
 Assert(MyReplicationSlot == ((void*)0));






 active_pid = 0;
 slot = ((void*)0);
 LWLockAcquire(ReplicationSlotControlLock, LW_SHARED);
 for (i = 0; i < max_replication_slots; i++)
 {
  ReplicationSlot *s = &ReplicationSlotCtl->replication_slots[i];

  if (s->in_use && strcmp(name, NameStr(s->data.name)) == 0)
  {




   if (IsUnderPostmaster)
   {





    ConditionVariablePrepareToSleep(&s->active_cv);

    SpinLockAcquire(&s->mutex);

    active_pid = s->active_pid;
    if (active_pid == 0)
     active_pid = s->active_pid = MyProcPid;

    SpinLockRelease(&s->mutex);
   }
   else
    active_pid = MyProcPid;
   slot = s;

   break;
  }
 }
 LWLockRelease(ReplicationSlotControlLock);


 if (slot == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("replication slot \"%s\" does not exist", name)));





 if (active_pid != MyProcPid)
 {
  if (nowait)
   ereport(ERROR,
     (errcode(ERRCODE_OBJECT_IN_USE),
      errmsg("replication slot \"%s\" is active for PID %d",
       name, active_pid)));


  ConditionVariableSleep(&slot->active_cv,
          WAIT_EVENT_REPLICATION_SLOT_DROP);
  ConditionVariableCancelSleep();
  goto retry;
 }
 else
  ConditionVariableCancelSleep();


 ConditionVariableBroadcast(&slot->active_cv);


 MyReplicationSlot = slot;
}
