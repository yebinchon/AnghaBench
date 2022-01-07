
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_param {int sched_priority; } ;
typedef int pthread_t ;
typedef int cpu_set_t ;


 int CPU_SET (int,int *) ;
 int CPU_ZERO (int *) ;
 int SCHED_FIFO ;
 int fprintf (int ,char*) ;
 int pthread_setaffinity_np (int ,int,int *) ;
 int sched_setscheduler (int ,int ,struct sched_param*) ;
 int stderr ;

__attribute__((used)) static void set_pthread_cpu(pthread_t th, int cpu)
{
 cpu_set_t run_cpu_mask;
 struct sched_param param;

 CPU_ZERO(&run_cpu_mask);
 CPU_SET(cpu, &run_cpu_mask);
 pthread_setaffinity_np(th, sizeof(cpu_set_t), &run_cpu_mask);

 param.sched_priority = 1;
 if (0 && sched_setscheduler(0, SCHED_FIFO, &param) == -1) {

  fprintf(stderr, "could not set SCHED_FIFO, run as root?\n");
 }
}
