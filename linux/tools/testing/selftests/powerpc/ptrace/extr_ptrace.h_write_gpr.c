
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long* gpr; } ;
typedef int pid_t ;


 int PTRACE_GETREGS ;
 int PTRACE_SETREGS ;
 int TEST_FAIL ;
 int TEST_PASS ;
 scalar_t__ malloc (int) ;
 int perror (char*) ;
 int ptrace (int ,int ,int *,struct pt_regs*) ;

int write_gpr(pid_t child, unsigned long val)
{
 struct pt_regs *regs;
 int i, ret;

 regs = (struct pt_regs *) malloc(sizeof(struct pt_regs));
 if (!regs) {
  perror("malloc() failed");
  return TEST_FAIL;
 }

 ret = ptrace(PTRACE_GETREGS, child, ((void*)0), regs);
 if (ret) {
  perror("ptrace(PTRACE_GETREGSET) failed");
  return TEST_FAIL;
 }

 for (i = 14; i < 32; i++)
  regs->gpr[i] = val;

 ret = ptrace(PTRACE_SETREGS, child, ((void*)0), regs);
 if (ret) {
  perror("ptrace(PTRACE_GETREGSET) failed");
  return TEST_FAIL;
 }
 return TEST_PASS;
}
