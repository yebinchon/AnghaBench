
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spinlock_t ;


 int assert (int) ;
 int pthread_spin_init (int *,int ) ;

__attribute__((used)) static void spin_lock_init(spinlock_t *lock)
{
 int r = pthread_spin_init(lock, 0);
 assert(!r);
}
