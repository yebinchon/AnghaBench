
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int FAIL_IF (int) ;
 int exit (int) ;
 int fork () ;
 int vmx_syscall () ;
 int waitpid (int,int*,int ) ;

int test_vmx_syscall(void)
{



 pid_t pid2;
 pid_t pid = fork();
 int ret;
 int child_ret;
 FAIL_IF(pid == -1);

 pid2 = fork();
 ret = vmx_syscall();

 if (pid2 == -1) {



  ret = child_ret = 1;
 } else {
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
