
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct iovec {int iov_len; int * iov_base; } ;
typedef int regs ;
typedef int pid_t ;


 int NT_PPC_TM_CVSX ;
 int PTRACE_GETREGSET ;
 int TEST_FAIL ;
 int TEST_PASS ;
 int memcpy (unsigned long*,unsigned long*,int) ;
 int perror (char*) ;
 int ptrace (int ,int ,int ,struct iovec*) ;

int show_vsx_ckpt(pid_t child, unsigned long *vsx)
{
 unsigned long regs[32];
 struct iovec iov;
 int ret;

 iov.iov_base = (u64 *) regs;
 iov.iov_len = sizeof(regs);
 ret = ptrace(PTRACE_GETREGSET, child, NT_PPC_TM_CVSX, &iov);
 if (ret) {
  perror("ptrace(PTRACE_GETREGSET, NT_PPC_TM_CVSX) failed");
  return TEST_FAIL;
 }
 memcpy(vsx, regs, sizeof(regs));
 return TEST_PASS;
}
