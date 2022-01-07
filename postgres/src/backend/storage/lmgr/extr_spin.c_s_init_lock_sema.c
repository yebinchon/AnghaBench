
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int slock_t ;


 int NUM_SPINLOCK_SEMAPHORES ;

void
s_init_lock_sema(volatile slock_t *lock, bool nested)
{
 static int counter = 0;

 *lock = ((++counter) % NUM_SPINLOCK_SEMAPHORES) + 1;
}
