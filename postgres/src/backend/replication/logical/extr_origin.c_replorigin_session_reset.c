
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int origin_cv; scalar_t__ acquired_by; } ;
typedef int ConditionVariable ;


 int Assert (int) ;
 int ConditionVariableBroadcast (int *) ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int ReplicationOriginLock ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ max_replication_slots ;
 TYPE_1__* session_replication_state ;

void
replorigin_session_reset(void)
{
 ConditionVariable *cv;

 Assert(max_replication_slots != 0);

 if (session_replication_state == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("no replication origin is configured")));

 LWLockAcquire(ReplicationOriginLock, LW_EXCLUSIVE);

 session_replication_state->acquired_by = 0;
 cv = &session_replication_state->origin_cv;
 session_replication_state = ((void*)0);

 LWLockRelease(ReplicationOriginLock);

 ConditionVariableBroadcast(cv);
}
