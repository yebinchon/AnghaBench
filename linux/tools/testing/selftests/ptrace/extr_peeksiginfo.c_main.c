
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sigset_t ;
struct TYPE_4__ {int si_int; int si_code; } ;
typedef TYPE_1__ siginfo_t ;
typedef int pid_t ;


 int PTRACE_ATTACH ;
 int PTRACE_KILL ;
 int SIGNR ;
 int SIGRTMIN ;
 int SIG_BLOCK ;
 int TEST_SICODE_PRIV ;
 int TEST_SICODE_SHARE ;
 scalar_t__ check_direct_path (int,int,int) ;
 scalar_t__ check_error_paths (int) ;
 int err (char*) ;
 int fork () ;
 int getppid () ;
 int printf (char*) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 int sleep (int) ;
 int sys_ptrace (int ,int,int *,int *) ;
 int sys_rt_sigqueueinfo (int,int ,TYPE_1__*) ;
 int sys_rt_tgsigqueueinfo (int,int,int ,TYPE_1__*) ;
 int waitpid (int,int *,int ) ;

int main(int argc, char *argv[])
{
 siginfo_t siginfo[SIGNR];
 int i, exit_code = 1;
 sigset_t blockmask;
 pid_t child;

 sigemptyset(&blockmask);
 sigaddset(&blockmask, SIGRTMIN);
 sigprocmask(SIG_BLOCK, &blockmask, ((void*)0));

 child = fork();
 if (child == -1) {
  err("fork() failed: %m");
  return 1;
 } else if (child == 0) {
  pid_t ppid = getppid();
  while (1) {
   if (ppid != getppid())
    break;
   sleep(1);
  }
  return 1;
 }


 for (i = 0; i < SIGNR; i++) {
  siginfo->si_code = TEST_SICODE_SHARE;
  siginfo->si_int = i;
  sys_rt_sigqueueinfo(child, SIGRTMIN, siginfo);

  siginfo->si_code = TEST_SICODE_PRIV;
  siginfo->si_int = i;
  sys_rt_tgsigqueueinfo(child, child, SIGRTMIN, siginfo);
 }

 if (sys_ptrace(PTRACE_ATTACH, child, ((void*)0), ((void*)0)) == -1)
  return 1;

 waitpid(child, ((void*)0), 0);


 if (check_direct_path(child, 0, 1))
  goto out;

 if (check_direct_path(child, 0, SIGNR))
  goto out;





 if (check_direct_path(child, 1, 3))
  goto out;

 if (check_error_paths(child))
  goto out;

 printf("PASS\n");
 exit_code = 0;
out:
 if (sys_ptrace(PTRACE_KILL, child, ((void*)0), ((void*)0)) == -1)
  return 1;

 waitpid(child, ((void*)0), 0);

 return exit_code;
}
