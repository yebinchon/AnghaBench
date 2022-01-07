
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pid_using_dumpfile; scalar_t__ bgworker_pid; int lock; } ;
typedef int Datum ;


 void* InvalidPid ;
 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_EXCLUSIVE ;
 scalar_t__ MyProcPid ;
 TYPE_1__* apw_state ;

__attribute__((used)) static void
apw_detach_shmem(int code, Datum arg)
{
 LWLockAcquire(&apw_state->lock, LW_EXCLUSIVE);
 if (apw_state->pid_using_dumpfile == MyProcPid)
  apw_state->pid_using_dumpfile = InvalidPid;
 if (apw_state->bgworker_pid == MyProcPid)
  apw_state->bgworker_pid = InvalidPid;
 LWLockRelease(&apw_state->lock);
}
