
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int darray ;
 int exit (int) ;
 int test_fpu (int ,int*) ;
 int waitpid (int,int*,int ) ;

int syscall_fpu(void)
{
 pid_t fork_pid;
 int i;
 int ret;
 int child_ret;
 for (i = 0; i < 1000; i++) {

  ret = test_fpu(darray, &fork_pid);
  if (fork_pid == -1)
   return -1;
  if (fork_pid == 0)
   exit(ret);
  waitpid(fork_pid, &child_ret, 0);
  if (ret || child_ret)
   return 1;
 }

 return 0;
}
