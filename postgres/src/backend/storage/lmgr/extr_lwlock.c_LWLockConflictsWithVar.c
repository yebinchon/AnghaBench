
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
struct TYPE_5__ {int state; } ;
typedef TYPE_1__ LWLock ;


 int LWLockWaitListLock (TYPE_1__*) ;
 int LWLockWaitListUnlock (TYPE_1__*) ;
 int LW_VAL_EXCLUSIVE ;
 int pg_atomic_read_u32 (int *) ;

__attribute__((used)) static bool
LWLockConflictsWithVar(LWLock *lock,
        uint64 *valptr, uint64 oldval, uint64 *newval,
        bool *result)
{
 bool mustwait;
 uint64 value;
 mustwait = (pg_atomic_read_u32(&lock->state) & LW_VAL_EXCLUSIVE) != 0;

 if (!mustwait)
 {
  *result = 1;
  return 0;
 }

 *result = 0;






 LWLockWaitListLock(lock);
 value = *valptr;
 LWLockWaitListUnlock(lock);

 if (value != oldval)
 {
  mustwait = 0;
  *newval = value;
 }
 else
 {
  mustwait = 1;
 }

 return mustwait;
}
