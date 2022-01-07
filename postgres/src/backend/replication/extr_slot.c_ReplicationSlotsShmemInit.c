
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int active_cv; int io_in_progress_lock; int mutex; } ;
struct TYPE_5__ {TYPE_2__* replication_slots; } ;
typedef TYPE_1__ ReplicationSlotCtlData ;
typedef TYPE_2__ ReplicationSlot ;


 int ConditionVariableInit (int *) ;
 int LWLockInitialize (int *,int ) ;
 int LWLockRegisterTranche (int ,char*) ;
 int LWTRANCHE_REPLICATION_SLOT_IO_IN_PROGRESS ;
 int MemSet (TYPE_1__*,int ,int ) ;
 TYPE_1__* ReplicationSlotCtl ;
 int ReplicationSlotsShmemSize () ;
 scalar_t__ ShmemInitStruct (char*,int ,int*) ;
 int SpinLockInit (int *) ;
 int max_replication_slots ;

void
ReplicationSlotsShmemInit(void)
{
 bool found;

 if (max_replication_slots == 0)
  return;

 ReplicationSlotCtl = (ReplicationSlotCtlData *)
  ShmemInitStruct("ReplicationSlot Ctl", ReplicationSlotsShmemSize(),
      &found);

 LWLockRegisterTranche(LWTRANCHE_REPLICATION_SLOT_IO_IN_PROGRESS,
        "replication_slot_io");

 if (!found)
 {
  int i;


  MemSet(ReplicationSlotCtl, 0, ReplicationSlotsShmemSize());

  for (i = 0; i < max_replication_slots; i++)
  {
   ReplicationSlot *slot = &ReplicationSlotCtl->replication_slots[i];


   SpinLockInit(&slot->mutex);
   LWLockInitialize(&slot->io_in_progress_lock, LWTRANCHE_REPLICATION_SLOT_IO_IN_PROGRESS);
   ConditionVariableInit(&slot->active_cv);
  }
 }
}
