
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_9__ {scalar_t__ mode; TYPE_1__* lock; } ;
struct TYPE_8__ {int state; } ;
typedef scalar_t__ LWLockMode ;
typedef TYPE_1__ LWLock ;


 int Assert (int) ;
 int ERROR ;
 int LOG_LWDEBUG (char*,TYPE_1__*,char*) ;
 int LWLockWakeup (TYPE_1__*) ;
 scalar_t__ LW_EXCLUSIVE ;
 int LW_FLAG_HAS_WAITERS ;
 int LW_FLAG_RELEASE_OK ;
 int LW_LOCK_MASK ;
 int LW_VAL_EXCLUSIVE ;
 int LW_VAL_SHARED ;
 int PRINT_LWDEBUG (char*,TYPE_1__*,scalar_t__) ;
 int RESUME_INTERRUPTS () ;
 int TRACE_POSTGRESQL_LWLOCK_RELEASE (int ) ;
 int T_NAME (TYPE_1__*) ;
 int elog (int ,char*,int ) ;
 TYPE_2__* held_lwlocks ;
 int num_held_lwlocks ;
 int pg_atomic_sub_fetch_u32 (int *,int) ;

void
LWLockRelease(LWLock *lock)
{
 LWLockMode mode;
 uint32 oldstate;
 bool check_waiters;
 int i;





 for (i = num_held_lwlocks; --i >= 0;)
  if (lock == held_lwlocks[i].lock)
   break;

 if (i < 0)
  elog(ERROR, "lock %s is not held", T_NAME(lock));

 mode = held_lwlocks[i].mode;

 num_held_lwlocks--;
 for (; i < num_held_lwlocks; i++)
  held_lwlocks[i] = held_lwlocks[i + 1];

 PRINT_LWDEBUG("LWLockRelease", lock, mode);





 if (mode == LW_EXCLUSIVE)
  oldstate = pg_atomic_sub_fetch_u32(&lock->state, LW_VAL_EXCLUSIVE);
 else
  oldstate = pg_atomic_sub_fetch_u32(&lock->state, LW_VAL_SHARED);


 Assert(!(oldstate & LW_VAL_EXCLUSIVE));






 if ((oldstate & (LW_FLAG_HAS_WAITERS | LW_FLAG_RELEASE_OK)) ==
  (LW_FLAG_HAS_WAITERS | LW_FLAG_RELEASE_OK) &&
  (oldstate & LW_LOCK_MASK) == 0)
  check_waiters = 1;
 else
  check_waiters = 0;





 if (check_waiters)
 {

  LOG_LWDEBUG("LWLockRelease", lock, "releasing waiters");
  LWLockWakeup(lock);
 }

 TRACE_POSTGRESQL_LWLOCK_RELEASE(T_NAME(lock));




 RESUME_INTERRUPTS();
}
