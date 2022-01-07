
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int tranche; } ;
struct TYPE_4__ {TYPE_3__ lock; void* pid_using_dumpfile; void* bgworker_pid; } ;
typedef int AutoPrewarmSharedState ;


 int AddinShmemInitLock ;
 void* InvalidPid ;
 int LWLockAcquire (int ,int ) ;
 int LWLockInitialize (TYPE_3__*,int ) ;
 int LWLockNewTrancheId () ;
 int LWLockRegisterTranche (int ,char*) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 TYPE_1__* ShmemInitStruct (char*,int,int*) ;
 TYPE_1__* apw_state ;

__attribute__((used)) static bool
apw_init_shmem(void)
{
 bool found;

 LWLockAcquire(AddinShmemInitLock, LW_EXCLUSIVE);
 apw_state = ShmemInitStruct("autoprewarm",
        sizeof(AutoPrewarmSharedState),
        &found);
 if (!found)
 {

  LWLockInitialize(&apw_state->lock, LWLockNewTrancheId());
  apw_state->bgworker_pid = InvalidPid;
  apw_state->pid_using_dumpfile = InvalidPid;
 }
 LWLockRelease(AddinShmemInitLock);

 LWLockRegisterTranche(apw_state->lock.tranche, "autoprewarm");

 return found;
}
