
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agent_info {int cpus; int ctl_fd; int * rw_ti; } ;
typedef int pthread_t ;


 int EXIT_FAILURE ;
 int MAX_CPUS ;
 int exit (int ) ;
 int pr_err (char*,int,int) ;
 int pthread_join (int ,int *) ;
 int rw_ctl_loop (int ) ;
 int rw_thread_run (int ) ;

__attribute__((used)) static void agent_main_loop(struct agent_info *s)
{
 int cpu;
 pthread_t rw_thread_per_cpu[MAX_CPUS];


 for (cpu = 0; cpu < s->cpus; cpu++)
  rw_thread_per_cpu[cpu] = rw_thread_run(s->rw_ti[cpu]);

 rw_ctl_loop(s->ctl_fd);


 for (cpu = 0; cpu < s->cpus; cpu++) {
  int ret;

  ret = pthread_join(rw_thread_per_cpu[cpu], ((void*)0));
  if (ret != 0) {
   pr_err("pthread_join() error:%d (cpu %d)\n", ret, cpu);
   exit(EXIT_FAILURE);
  }
 }
}
