
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int origin_cv; int lock; } ;
struct TYPE_5__ {int tranche_id; TYPE_3__* states; } ;
typedef TYPE_1__ ReplicationStateCtl ;


 int ConditionVariableInit (int *) ;
 int LWLockInitialize (int *,int ) ;
 int LWLockRegisterTranche (int ,char*) ;
 int LWTRANCHE_REPLICATION_ORIGIN ;
 int MemSet (TYPE_3__*,int ,int ) ;
 int ReplicationOriginShmemSize () ;
 scalar_t__ ShmemInitStruct (char*,int ,int*) ;
 int max_replication_slots ;
 TYPE_3__* replication_states ;
 TYPE_1__* replication_states_ctl ;

void
ReplicationOriginShmemInit(void)
{
 bool found;

 if (max_replication_slots == 0)
  return;

 replication_states_ctl = (ReplicationStateCtl *)
  ShmemInitStruct("ReplicationOriginState",
      ReplicationOriginShmemSize(),
      &found);
 replication_states = replication_states_ctl->states;

 if (!found)
 {
  int i;

  replication_states_ctl->tranche_id = LWTRANCHE_REPLICATION_ORIGIN;

  MemSet(replication_states, 0, ReplicationOriginShmemSize());

  for (i = 0; i < max_replication_slots; i++)
  {
   LWLockInitialize(&replication_states[i].lock,
        replication_states_ctl->tranche_id);
   ConditionVariableInit(&replication_states[i].origin_cv);
  }
 }

 LWLockRegisterTranche(replication_states_ctl->tranche_id,
        "replication_origin");
}
