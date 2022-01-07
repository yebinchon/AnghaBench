
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {unsigned long* iov_base; int iov_len; } ;
typedef int pid_t ;


 int FAIL_IF (int ) ;
 int PTRACE_GETREGSET ;
 int TEST_PASS ;
 long ptrace (int ,int ,unsigned long,struct iovec*) ;
 int start_trace (int ) ;
 int stop_trace (int ) ;

int ptrace_read_regs(pid_t child, unsigned long type, unsigned long regs[],
       int n)
{
 struct iovec iov;
 long ret;

 FAIL_IF(start_trace(child));

 iov.iov_base = regs;
 iov.iov_len = n * sizeof(unsigned long);

 ret = ptrace(PTRACE_GETREGSET, child, type, &iov);
 if (ret)
  return ret;

 FAIL_IF(stop_trace(child));

 return TEST_PASS;
}
