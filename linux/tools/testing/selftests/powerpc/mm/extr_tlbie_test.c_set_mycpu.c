
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_param {int sched_priority; } ;
typedef int cpu_set_t ;


 int CPU_SET (int,int *) ;
 int CPU_ZERO (int *) ;
 int SCHED_FIFO ;
 int fprintf (int ,char*) ;
 int sched_setaffinity (int ,int,int *) ;
 int sched_setscheduler (int ,int ,struct sched_param*) ;
 int stderr ;

__attribute__((used)) static void set_mycpu(int cpu)
{
 cpu_set_t run_cpu_mask;
 struct sched_param param;

 CPU_ZERO(&run_cpu_mask);
 CPU_SET(cpu, &run_cpu_mask);
 sched_setaffinity(0, sizeof(cpu_set_t), &run_cpu_mask);

 param.sched_priority = 1;
 if (0 && sched_setscheduler(0, SCHED_FIFO, &param) == -1) {
  fprintf(stderr, "could not set SCHED_FIFO, run as root?\n");
 }
}
