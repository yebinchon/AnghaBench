
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int PTRACE_GETVRREGS ;
 int TEST_FAIL ;
 int TEST_PASS ;
 int perror (char*) ;
 int ptrace (int ,int ,int ,unsigned long**) ;

int show_vmx(pid_t child, unsigned long vmx[][2])
{
 int ret;

 ret = ptrace(PTRACE_GETVRREGS, child, 0, vmx);
 if (ret) {
  perror("ptrace(PTRACE_GETVRREGS) failed");
  return TEST_FAIL;
 }
 return TEST_PASS;
}
