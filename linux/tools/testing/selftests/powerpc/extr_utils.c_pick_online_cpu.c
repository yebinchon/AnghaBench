
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mask ;
typedef int cpu_set_t ;


 scalar_t__ CPU_ISSET (int,int *) ;
 int CPU_SETSIZE ;
 int CPU_ZERO (int *) ;
 int perror (char*) ;
 int printf (char*) ;
 scalar_t__ sched_getaffinity (int ,int,int *) ;

int pick_online_cpu(void)
{
 cpu_set_t mask;
 int cpu;

 CPU_ZERO(&mask);

 if (sched_getaffinity(0, sizeof(mask), &mask)) {
  perror("sched_getaffinity");
  return -1;
 }


 for (cpu = 8; cpu < CPU_SETSIZE; cpu += 8)
  if (CPU_ISSET(cpu, &mask))
   return cpu;


 for (cpu = CPU_SETSIZE - 1; cpu >= 0; cpu--)
  if (CPU_ISSET(cpu, &mask))
   return cpu;

 printf("No cpus in affinity mask?!\n");
 return -1;
}
