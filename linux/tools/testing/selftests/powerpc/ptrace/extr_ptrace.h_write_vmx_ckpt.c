
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct iovec {int iov_len; int * iov_base; } ;
typedef int regs ;
typedef int pid_t ;


 int NT_PPC_TM_CVMX ;
 int PTRACE_SETREGSET ;
 int TEST_FAIL ;
 int TEST_PASS ;
 int memcpy (unsigned long**,unsigned long**,int) ;
 int perror (char*) ;
 int ptrace (int ,int ,int ,struct iovec*) ;

int write_vmx_ckpt(pid_t child, unsigned long vmx[][2])
{
 unsigned long regs[34][2];
 struct iovec iov;
 int ret;

 memcpy(regs, vmx, sizeof(regs));
 iov.iov_base = (u64 *) regs;
 iov.iov_len = sizeof(regs);
 ret = ptrace(PTRACE_SETREGSET, child, NT_PPC_TM_CVMX, &iov);
 if (ret) {
  perror("ptrace(PTRACE_SETREGSET, NT_PPC_TM_CVMX) failed");
  return TEST_FAIL;
 }
 return TEST_PASS;
}
