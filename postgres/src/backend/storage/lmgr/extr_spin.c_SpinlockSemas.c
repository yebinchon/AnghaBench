
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUM_ATOMICS_SEMAPHORES ;
 int NUM_SPINLOCK_SEMAPHORES ;

int
SpinlockSemas(void)
{
 return NUM_SPINLOCK_SEMAPHORES + NUM_ATOMICS_SEMAPHORES;
}
