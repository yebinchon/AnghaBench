
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ acquired_by; int origin_cv; } ;
typedef int Datum ;
typedef int ConditionVariable ;


 int ConditionVariableBroadcast (int *) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 scalar_t__ MyProcPid ;
 int ReplicationOriginLock ;
 TYPE_1__* session_replication_state ;

__attribute__((used)) static void
ReplicationOriginExitCleanup(int code, Datum arg)
{
 ConditionVariable *cv = ((void*)0);

 LWLockAcquire(ReplicationOriginLock, LW_EXCLUSIVE);

 if (session_replication_state != ((void*)0) &&
  session_replication_state->acquired_by == MyProcPid)
 {
  cv = &session_replication_state->origin_cv;

  session_replication_state->acquired_by = 0;
  session_replication_state = ((void*)0);
 }

 LWLockRelease(ReplicationOriginLock);

 if (cv)
  ConditionVariableBroadcast(cv);
}
