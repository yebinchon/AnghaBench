
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int internal_lock; } ;
typedef TYPE_1__ spinlock_t ;


 int lock_impl_trylock (int *) ;
 int preempt_disable () ;

__attribute__((used)) static inline bool spin_trylock(spinlock_t *lock)
{

 preempt_disable();
 return lock_impl_trylock(&lock->internal_lock);



}
