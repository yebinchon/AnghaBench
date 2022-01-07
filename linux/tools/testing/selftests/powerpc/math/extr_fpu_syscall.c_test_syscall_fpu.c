
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int FAIL_IF (int) ;
 int exit (int) ;
 int fork () ;
 int syscall_fpu () ;
 int waitpid (int,int*,int ) ;

int test_syscall_fpu(void)
{



 pid_t pid2;
 pid_t pid = fork();
 int ret;
 int child_ret;
 FAIL_IF(pid == -1);

 pid2 = fork();

 if (pid2 == -1) {



  child_ret = ret = 1;
 } else {
  ret = syscall_fpu();
  if (pid2)
   waitpid(pid2, &child_ret, 0);
  else
   exit(ret);
 }

 ret |= child_ret;

 if (pid)
  waitpid(pid, &child_ret, 0);
 else
  exit(ret);

 FAIL_IF(ret || child_ret);
 return 0;
}
