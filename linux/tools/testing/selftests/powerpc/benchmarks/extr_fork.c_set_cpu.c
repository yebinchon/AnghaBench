
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpuset ;
typedef int cpu_set_t ;


 int CPU_SET (int,int *) ;
 int CPU_ZERO (int *) ;
 int exit (int) ;
 int perror (char*) ;
 scalar_t__ sched_setaffinity (int ,int,int *) ;

__attribute__((used)) static void set_cpu(int cpu)
{
 cpu_set_t cpuset;

 if (cpu == -1)
  return;

 CPU_ZERO(&cpuset);
 CPU_SET(cpu, &cpuset);

 if (sched_setaffinity(0, sizeof(cpuset), &cpuset)) {
  perror("sched_setaffinity");
  exit(1);
 }
}
