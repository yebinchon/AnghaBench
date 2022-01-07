
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mask ;
typedef int cpu_set_t ;


 int CPU_SET (int,int *) ;
 int CPU_SETSIZE ;
 int CPU_ZERO (int *) ;
 scalar_t__ sched_setaffinity (int ,int,int *) ;
 scalar_t__ test_thread_dscr (unsigned long) ;

__attribute__((used)) static int check_cpu_dscr_thread(unsigned long val)
{
 cpu_set_t mask;
 int cpu;

 for (cpu = 0; cpu < CPU_SETSIZE; cpu++) {
  CPU_ZERO(&mask);
  CPU_SET(cpu, &mask);
  if (sched_setaffinity(0, sizeof(mask), &mask))
   continue;

  if (test_thread_dscr(val))
   return 1;
 }
 return 0;

}
