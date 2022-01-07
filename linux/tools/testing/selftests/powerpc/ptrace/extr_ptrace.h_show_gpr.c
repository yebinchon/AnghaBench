
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long* gpr; } ;
typedef int pid_t ;


 int PTRACE_GETREGS ;
 int TEST_FAIL ;
 int TEST_PASS ;
 scalar_t__ malloc (int) ;
 int perror (char*) ;
 int ptrace (int ,int ,int *,struct pt_regs*) ;

int show_gpr(pid_t child, unsigned long *gpr)
{
 struct pt_regs *regs;
 int ret, i;

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

 if (gpr) {
  for (i = 14; i < 32; i++)
   gpr[i-14] = regs->gpr[i];
 }

 return TEST_PASS;
}
