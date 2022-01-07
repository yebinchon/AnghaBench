
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int slock_t ;


 int ERROR ;
 int NUM_SPINLOCK_SEMAPHORES ;
 int PGSemaphoreUnlock (int ) ;
 int * SpinlockSemaArray ;
 int elog (int ,char*,int) ;

void
s_unlock_sema(volatile slock_t *lock)
{
 int lockndx = *lock;

 if (lockndx <= 0 || lockndx > NUM_SPINLOCK_SEMAPHORES)
  elog(ERROR, "invalid spinlock number: %d", lockndx);
 PGSemaphoreUnlock(SpinlockSemaArray[lockndx - 1]);
}
