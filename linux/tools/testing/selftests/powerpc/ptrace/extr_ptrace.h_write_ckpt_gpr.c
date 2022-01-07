
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pt_regs {unsigned long* gpr; } ;
struct iovec {int iov_len; int * iov_base; } ;
typedef int pid_t ;


 int NT_PPC_TM_CGPR ;
 int PTRACE_GETREGSET ;
 int PTRACE_SETREGSET ;
 int TEST_FAIL ;
 int TEST_PASS ;
 scalar_t__ malloc (int) ;
 int perror (char*) ;
 int ptrace (int ,int ,int ,struct iovec*) ;

int write_ckpt_gpr(pid_t child, unsigned long val)
{
 struct pt_regs *regs;
 struct iovec iov;
 int ret, i;

 regs = (struct pt_regs *) malloc(sizeof(struct pt_regs));
 if (!regs) {
  perror("malloc() failed\n");
  return TEST_FAIL;
 }
 iov.iov_base = (u64 *) regs;
 iov.iov_len = sizeof(struct pt_regs);

 ret = ptrace(PTRACE_GETREGSET, child, NT_PPC_TM_CGPR, &iov);
 if (ret) {
  perror("ptrace(PTRACE_GETREGSET) failed");
  return TEST_FAIL;
 }

 for (i = 14; i < 32; i++)
  regs->gpr[i] = val;

 ret = ptrace(PTRACE_SETREGSET, child, NT_PPC_TM_CGPR, &iov);
 if (ret) {
  perror("ptrace(PTRACE_GETREGSET) failed");
  return TEST_FAIL;
 }
 return TEST_PASS;
}
