
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {int iov_len; struct fpr_regs* iov_base; } ;
struct fpr_regs {unsigned long* fpr; } ;
typedef int pid_t ;


 int NT_PPC_TM_CFPR ;
 int PTRACE_GETREGSET ;
 int TEST_FAIL ;
 int TEST_PASS ;
 scalar_t__ malloc (int) ;
 int perror (char*) ;
 int ptrace (int ,int ,int ,struct iovec*) ;

int show_ckpt_fpr(pid_t child, unsigned long *fpr)
{
 struct fpr_regs *regs;
 struct iovec iov;
 int ret, i;

 regs = (struct fpr_regs *) malloc(sizeof(struct fpr_regs));
 iov.iov_base = regs;
 iov.iov_len = sizeof(struct fpr_regs);

 ret = ptrace(PTRACE_GETREGSET, child, NT_PPC_TM_CFPR, &iov);
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
