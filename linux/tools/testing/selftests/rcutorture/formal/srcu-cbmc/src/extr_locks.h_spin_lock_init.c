
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int internal_lock; } ;
typedef TYPE_1__ spinlock_t ;


 int lock_impl_init (int *) ;

__attribute__((used)) static inline void spin_lock_init(spinlock_t *lock)
{
 lock_impl_init(&lock->internal_lock);
}
