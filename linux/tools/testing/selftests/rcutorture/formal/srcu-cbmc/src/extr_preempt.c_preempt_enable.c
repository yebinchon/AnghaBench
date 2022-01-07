
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int * cpu_preemption_locks ;
 int lock_impl_unlock (int *) ;
 int preempt_disable_count ;
 size_t thread_cpu_id ;

void preempt_enable(void)
{
 BUG_ON(preempt_disable_count < 1);

 if (--preempt_disable_count)
  return;

 lock_impl_unlock(&cpu_preemption_locks[thread_cpu_id]);
}
