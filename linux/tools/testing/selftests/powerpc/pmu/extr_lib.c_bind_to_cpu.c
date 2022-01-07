
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mask ;
typedef int cpu_set_t ;


 int CPU_SET (int,int *) ;
 int CPU_ZERO (int *) ;
 int printf (char*,int) ;
 int sched_setaffinity (int ,int,int *) ;

int bind_to_cpu(int cpu)
{
 cpu_set_t mask;

 printf("Binding to cpu %d\n", cpu);

 CPU_ZERO(&mask);
 CPU_SET(cpu, &mask);

 return sched_setaffinity(0, sizeof(mask), &mask);
}
