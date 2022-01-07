
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_3__ {int owner; int state; } ;
typedef scalar_t__ LWLockMode ;
typedef TYPE_1__ LWLock ;


 int AssertArg (int) ;
 scalar_t__ LW_EXCLUSIVE ;
 int LW_LOCK_MASK ;
 scalar_t__ LW_SHARED ;
 int LW_VAL_EXCLUSIVE ;
 scalar_t__ LW_VAL_SHARED ;
 int MyProc ;
 scalar_t__ pg_atomic_compare_exchange_u32 (int *,int*,int) ;
 int pg_atomic_read_u32 (int *) ;
 int pg_unreachable () ;

__attribute__((used)) static bool
LWLockAttemptLock(LWLock *lock, LWLockMode mode)
{
 uint32 old_state;

 AssertArg(mode == LW_EXCLUSIVE || mode == LW_SHARED);





 old_state = pg_atomic_read_u32(&lock->state);


 while (1)
 {
  uint32 desired_state;
  bool lock_free;

  desired_state = old_state;

  if (mode == LW_EXCLUSIVE)
  {
   lock_free = (old_state & LW_LOCK_MASK) == 0;
   if (lock_free)
    desired_state += LW_VAL_EXCLUSIVE;
  }
  else
  {
   lock_free = (old_state & LW_VAL_EXCLUSIVE) == 0;
   if (lock_free)
    desired_state += LW_VAL_SHARED;
  }
  if (pg_atomic_compare_exchange_u32(&lock->state,
             &old_state, desired_state))
  {
   if (lock_free)
   {





    return 0;
   }
   else
    return 1;
  }
 }
 pg_unreachable();
}
