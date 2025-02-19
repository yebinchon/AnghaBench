
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpr_regs {unsigned long* fpr; } ;
typedef int pid_t ;


 int PTRACE_GETFPREGS ;
 int TEST_FAIL ;
 int TEST_PASS ;
 scalar_t__ malloc (int) ;
 int perror (char*) ;
 int ptrace (int ,int ,int *,struct fpr_regs*) ;

int show_fpr(pid_t child, unsigned long *fpr)
{
 struct fpr_regs *regs;
 int ret, i;

 regs = (struct fpr_regs *) malloc(sizeof(struct fpr_regs));
 ret = ptrace(PTRACE_GETFPREGS, child, ((void*)0), regs);
 if (ret) {
  perror("ptrace(PTRACE_GETREGSET) failed");
  return TEST_FAIL;
 }

 if (fpr) {
  for (i = 0; i < 32; i++)
   fpr[i] = regs->fpr[i];
 }
 return TEST_PASS;
}
