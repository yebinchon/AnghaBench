
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpuset ;
typedef int cpu_set_t ;


 int CPU_SET (unsigned long,int *) ;
 int CPU_ZERO (int *) ;
 int exit (int) ;
 int fork () ;
 int perror (char*) ;
 scalar_t__ sched_setaffinity (int ,int,int *) ;

__attribute__((used)) static void start_process_on(void *(*fn)(void *), void *arg, unsigned long cpu)
{
 int pid;
 cpu_set_t cpuset;

 pid = fork();
 if (pid == -1) {
  perror("fork");
  exit(1);
 }

 if (pid)
  return;

 CPU_ZERO(&cpuset);
 CPU_SET(cpu, &cpuset);

 if (sched_setaffinity(0, sizeof(cpuset), &cpuset)) {
  perror("sched_setaffinity");
  exit(1);
 }

 fn(arg);

 exit(0);
}
