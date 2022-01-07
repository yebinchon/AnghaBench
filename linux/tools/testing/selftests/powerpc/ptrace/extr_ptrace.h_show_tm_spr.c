
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tm_spr_regs {int dummy; } ;
struct iovec {int iov_len; int * iov_base; } ;
typedef int pid_t ;


 int NT_PPC_TM_SPR ;
 int PTRACE_GETREGSET ;
 int TEST_FAIL ;
 int TEST_PASS ;
 scalar_t__ malloc (int) ;
 int memcpy (struct tm_spr_regs*,struct tm_spr_regs*,int) ;
 int perror (char*) ;
 int ptrace (int ,int ,int ,struct iovec*) ;

int show_tm_spr(pid_t child, struct tm_spr_regs *out)
{
 struct tm_spr_regs *regs;
 struct iovec iov;
 int ret;

 regs = (struct tm_spr_regs *) malloc(sizeof(struct tm_spr_regs));
 if (!regs) {
  perror("malloc() failed");
  return TEST_FAIL;
 }

 iov.iov_base = (u64 *) regs;
 iov.iov_len = sizeof(struct tm_spr_regs);

 ret = ptrace(PTRACE_GETREGSET, child, NT_PPC_TM_SPR, &iov);
 if (ret) {
  perror("ptrace(PTRACE_GETREGSET) failed");
  return TEST_FAIL;
 }

 if (out)
  memcpy(out, regs, sizeof(struct tm_spr_regs));

 return TEST_PASS;
}
