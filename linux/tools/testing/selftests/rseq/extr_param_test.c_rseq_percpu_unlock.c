
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct percpu_lock {TYPE_1__* c; } ;
struct TYPE_2__ {int v; } ;


 int assert (int) ;
 int rseq_smp_store_release (int*,int ) ;

__attribute__((used)) static void rseq_percpu_unlock(struct percpu_lock *lock, int cpu)
{
 assert(lock->c[cpu].v == 1);




 rseq_smp_store_release(&lock->c[cpu].v, 0);
}
