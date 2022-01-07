
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mask ;
typedef int cpu_set_t ;


 int CPU_SET (int,int *) ;
 int CPU_ZERO (int *) ;
 int error (int,int ,char*,int) ;
 scalar_t__ sched_setaffinity (int ,int,int *) ;

__attribute__((used)) static int set_cpu(int cpu)
{
 cpu_set_t mask;

 CPU_ZERO(&mask);
 CPU_SET(cpu, &mask);
 if (sched_setaffinity(0, sizeof(mask), &mask))
  error(1, 0, "setaffinity %d", cpu);

 return 0;
}
