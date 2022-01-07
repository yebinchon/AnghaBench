
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int LWLock ;


 int LWLockRelease (int *) ;
 int LWLockWaitListLock (int *) ;
 int LWLockWaitListUnlock (int *) ;

void
LWLockReleaseClearVar(LWLock *lock, uint64 *valptr, uint64 val)
{
 LWLockWaitListLock(lock);






 *valptr = val;
 LWLockWaitListUnlock(lock);

 LWLockRelease(lock);
}
