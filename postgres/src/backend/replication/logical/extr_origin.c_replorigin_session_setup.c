
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ roident; scalar_t__ acquired_by; scalar_t__ remote_lsn; scalar_t__ local_lsn; int origin_cv; } ;
typedef TYPE_1__ ReplicationState ;
typedef scalar_t__ RepOriginId ;


 int Assert (int) ;
 int ConditionVariableBroadcast (int *) ;
 int ERRCODE_CONFIGURATION_LIMIT_EXCEEDED ;
 int ERRCODE_OBJECT_IN_USE ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 scalar_t__ InvalidRepOriginId ;
 scalar_t__ InvalidXLogRecPtr ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 scalar_t__ MyProcPid ;
 int ReplicationOriginExitCleanup ;
 int ReplicationOriginLock ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,...) ;
 int max_replication_slots ;
 int on_shmem_exit (int ,int ) ;
 TYPE_1__* replication_states ;
 TYPE_1__* session_replication_state ;

void
replorigin_session_setup(RepOriginId node)
{
 static bool registered_cleanup;
 int i;
 int free_slot = -1;

 if (!registered_cleanup)
 {
  on_shmem_exit(ReplicationOriginExitCleanup, 0);
  registered_cleanup = 1;
 }

 Assert(max_replication_slots > 0);

 if (session_replication_state != ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("cannot setup replication origin when one is already setup")));


 LWLockAcquire(ReplicationOriginLock, LW_EXCLUSIVE);





 for (i = 0; i < max_replication_slots; i++)
 {
  ReplicationState *curstate = &replication_states[i];


  if (curstate->roident == InvalidRepOriginId &&
   free_slot == -1)
  {
   free_slot = i;
   continue;
  }


  if (curstate->roident != node)
   continue;

  else if (curstate->acquired_by != 0)
  {
   ereport(ERROR,
     (errcode(ERRCODE_OBJECT_IN_USE),
      errmsg("replication origin with OID %d is already active for PID %d",
       curstate->roident, curstate->acquired_by)));
  }


  session_replication_state = curstate;
 }


 if (session_replication_state == ((void*)0) && free_slot == -1)
  ereport(ERROR,
    (errcode(ERRCODE_CONFIGURATION_LIMIT_EXCEEDED),
     errmsg("could not find free replication state slot for replication origin with OID %u",
      node),
     errhint("Increase max_replication_slots and try again.")));
 else if (session_replication_state == ((void*)0))
 {

  session_replication_state = &replication_states[free_slot];
  Assert(session_replication_state->remote_lsn == InvalidXLogRecPtr);
  Assert(session_replication_state->local_lsn == InvalidXLogRecPtr);
  session_replication_state->roident = node;
 }


 Assert(session_replication_state->roident != InvalidRepOriginId);

 session_replication_state->acquired_by = MyProcPid;

 LWLockRelease(ReplicationOriginLock);


 ConditionVariableBroadcast(&session_replication_state->origin_cv);
}
