
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int preempt_disable () ;
 int thread_cpu_id ;

__attribute__((used)) static inline int get_cpu(void)
{
 preempt_disable();
 return thread_cpu_id;
}
