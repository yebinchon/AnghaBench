
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atomic_t ;


 scalar_t__ atomic_cmp_set (int *,int ,int) ;
 int sched_yield () ;

__attribute__((used)) static inline int fpm_spinlock(atomic_t *lock, int try_once)
{
 if (try_once) {
  return atomic_cmp_set(lock, 0, 1) ? 1 : 0;
 }

 for (;;) {

  if (atomic_cmp_set(lock, 0, 1)) {
   break;
  }

  sched_yield();
 }

 return 1;
}
