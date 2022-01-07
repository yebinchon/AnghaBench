
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int _exit (int ) ;
 scalar_t__ do_exec ;
 int exit (int) ;
 int iterations ;
 int perror (char*) ;
 int run_exec () ;
 int vfork () ;
 int waitpid (int,int *,int ) ;

__attribute__((used)) static void bench_vfork(void)
{
 while (1) {
  pid_t pid = vfork();
  if (pid == -1) {
   perror("fork");
   exit(1);
  }
  if (pid == 0) {
   if (do_exec)
    run_exec();
   _exit(0);
  }
  pid = waitpid(pid, ((void*)0), 0);
  if (pid == -1) {
   perror("waitpid");
   exit(1);
  }
  iterations++;
 }
}
