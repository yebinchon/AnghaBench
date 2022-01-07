
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct iovec {int iov_len; int * iov_base; } ;
typedef int pid_t ;


 int NT_PPC_TM_CDSCR ;
 int NT_PPC_TM_CPPR ;
 int NT_PPC_TM_CTAR ;
 int PTRACE_SETREGSET ;
 int TEST_FAIL ;
 int TEST_PASS ;
 int free (unsigned long*) ;
 unsigned long* malloc (int) ;
 int perror (char*) ;
 int ptrace (int ,int ,int ,struct iovec*) ;

int write_ckpt_tar_registers(pid_t child, unsigned long tar,
  unsigned long ppr, unsigned long dscr)
{
 struct iovec iov;
 unsigned long *reg;
 int ret;

 reg = malloc(sizeof(unsigned long));
 if (!reg) {
  perror("malloc() failed");
  return TEST_FAIL;
 }

 iov.iov_base = (u64 *) reg;
 iov.iov_len = sizeof(unsigned long);

 *reg = tar;
 ret = ptrace(PTRACE_SETREGSET, child, NT_PPC_TM_CTAR, &iov);
 if (ret) {
  perror("ptrace(PTRACE_GETREGSET) failed");
  goto fail;
 }

 *reg = ppr;
 ret = ptrace(PTRACE_SETREGSET, child, NT_PPC_TM_CPPR, &iov);
 if (ret) {
  perror("ptrace(PTRACE_GETREGSET) failed");
  goto fail;
 }

 *reg = dscr;
 ret = ptrace(PTRACE_SETREGSET, child, NT_PPC_TM_CDSCR, &iov);
 if (ret) {
  perror("ptrace(PTRACE_GETREGSET) failed");
  goto fail;
 }

 free(reg);
 return TEST_PASS;
fail:
 free(reg);
 return TEST_FAIL;
}
