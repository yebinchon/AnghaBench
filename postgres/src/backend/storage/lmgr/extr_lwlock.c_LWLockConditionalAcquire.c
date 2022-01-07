
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mode; int * lock; } ;
typedef scalar_t__ LWLockMode ;
typedef int LWLock ;


 int AssertArg (int) ;
 int ERROR ;
 int HOLD_INTERRUPTS () ;
 int LOG_LWDEBUG (char*,int *,char*) ;
 int LWLockAttemptLock (int *,scalar_t__) ;
 scalar_t__ LW_EXCLUSIVE ;
 scalar_t__ LW_SHARED ;
 size_t MAX_SIMUL_LWLOCKS ;
 int PRINT_LWDEBUG (char*,int *,scalar_t__) ;
 int RESUME_INTERRUPTS () ;
 int TRACE_POSTGRESQL_LWLOCK_CONDACQUIRE (int ,scalar_t__) ;
 int TRACE_POSTGRESQL_LWLOCK_CONDACQUIRE_FAIL (int ,scalar_t__) ;
 int T_NAME (int *) ;
 int elog (int ,char*) ;
 TYPE_1__* held_lwlocks ;
 size_t num_held_lwlocks ;

bool
LWLockConditionalAcquire(LWLock *lock, LWLockMode mode)
{
 bool mustwait;

 AssertArg(mode == LW_SHARED || mode == LW_EXCLUSIVE);

 PRINT_LWDEBUG("LWLockConditionalAcquire", lock, mode);


 if (num_held_lwlocks >= MAX_SIMUL_LWLOCKS)
  elog(ERROR, "too many LWLocks taken");






 HOLD_INTERRUPTS();


 mustwait = LWLockAttemptLock(lock, mode);

 if (mustwait)
 {

  RESUME_INTERRUPTS();

  LOG_LWDEBUG("LWLockConditionalAcquire", lock, "failed");
  TRACE_POSTGRESQL_LWLOCK_CONDACQUIRE_FAIL(T_NAME(lock), mode);
 }
 else
 {

  held_lwlocks[num_held_lwlocks].lock = lock;
  held_lwlocks[num_held_lwlocks++].mode = mode;
  TRACE_POSTGRESQL_LWLOCK_CONDACQUIRE(T_NAME(lock), mode);
 }
 return !mustwait;
}
