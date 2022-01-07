
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 scalar_t__ INT_MAX ;
 size_t NR_CPUS ;
 int assume (int) ;
 int * cpu_preemption_locks ;
 int lock_impl_lock (int *) ;
 size_t nondet_int () ;
 scalar_t__ preempt_disable_count ;
 size_t thread_cpu_id ;

void preempt_disable(void)
{
 BUG_ON(preempt_disable_count < 0 || preempt_disable_count == INT_MAX);

 if (preempt_disable_count++)
  return;

 thread_cpu_id = nondet_int();
 assume(thread_cpu_id >= 0);
 assume(thread_cpu_id < NR_CPUS);
 lock_impl_lock(&cpu_preemption_locks[thread_cpu_id]);
}
