
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fork () ;
 int perror (char*) ;
 int set_cpu (int) ;

__attribute__((used)) static void start_process_on(void *(*fn)(void *), void *arg, int cpu)
{
 int pid;

 pid = fork();
 if (pid == -1) {
  perror("fork");
  exit(1);
 }

 if (pid)
  return;

 set_cpu(cpu);

 fn(arg);

 exit(0);
}
