
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spinlock_t ;


 int assert (int) ;
 int pthread_spin_unlock (int *) ;

__attribute__((used)) static void spin_unlock(spinlock_t *lock)
{
 int ret = pthread_spin_unlock(lock);
 assert(!ret);
}
