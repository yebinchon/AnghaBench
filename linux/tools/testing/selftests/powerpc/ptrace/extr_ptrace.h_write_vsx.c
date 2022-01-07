
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int PTRACE_SETVSRREGS ;
 int TEST_FAIL ;
 int TEST_PASS ;
 int perror (char*) ;
 int ptrace (int ,int ,int ,unsigned long*) ;

int write_vsx(pid_t child, unsigned long *vsx)
{
 int ret;

 ret = ptrace(PTRACE_SETVSRREGS, child, 0, vsx);
 if (ret) {
  perror("ptrace(PTRACE_SETVSRREGS) failed");
  return TEST_FAIL;
 }
 return TEST_PASS;
}
