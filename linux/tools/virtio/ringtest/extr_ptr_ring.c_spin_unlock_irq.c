
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spinlock_t ;


 int spin_unlock (int *) ;

__attribute__((used)) static void spin_unlock_irq(spinlock_t *lock)
{
 spin_unlock(lock);
}
