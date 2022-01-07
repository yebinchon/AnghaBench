
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* replication_slots; } ;
struct TYPE_6__ {scalar_t__ database; int name; } ;
struct TYPE_7__ {int active_pid; int mutex; TYPE_1__ data; int in_use; } ;
typedef TYPE_2__ ReplicationSlot ;
typedef scalar_t__ Oid ;


 int ERRCODE_OBJECT_IN_USE ;
 int ERROR ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 int MyProcPid ;
 TYPE_2__* MyReplicationSlot ;
 char* NameStr (int ) ;
 int ReplicationSlotControlLock ;
 TYPE_4__* ReplicationSlotCtl ;
 int ReplicationSlotDropAcquired () ;
 int SlotIsLogical (TYPE_2__*) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*,int) ;
 int max_replication_slots ;

void
ReplicationSlotsDropDBSlots(Oid dboid)
{
 int i;

 if (max_replication_slots <= 0)
  return;

restart:
 LWLockAcquire(ReplicationSlotControlLock, LW_SHARED);
 for (i = 0; i < max_replication_slots; i++)
 {
  ReplicationSlot *s;
  char *slotname;
  int active_pid;

  s = &ReplicationSlotCtl->replication_slots[i];


  if (!s->in_use)
   continue;


  if (!SlotIsLogical(s))
   continue;


  if (s->data.database != dboid)
   continue;


  SpinLockAcquire(&s->mutex);

  slotname = NameStr(s->data.name);
  active_pid = s->active_pid;
  if (active_pid == 0)
  {
   MyReplicationSlot = s;
   s->active_pid = MyProcPid;
  }
  SpinLockRelease(&s->mutex);
  if (active_pid)
   ereport(ERROR,
     (errcode(ERRCODE_OBJECT_IN_USE),
      errmsg("replication slot \"%s\" is active for PID %d",
       slotname, active_pid)));
  LWLockRelease(ReplicationSlotControlLock);
  ReplicationSlotDropAcquired();
  goto restart;
 }
 LWLockRelease(ReplicationSlotControlLock);
}
