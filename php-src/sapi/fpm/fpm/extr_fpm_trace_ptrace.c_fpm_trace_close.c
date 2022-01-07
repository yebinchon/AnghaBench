
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int PTRACE_DETACH ;
 int ZLOG_SYSERROR ;
 scalar_t__ ptrace (int ,int ,void*,int ) ;
 scalar_t__ traced_pid ;
 int zlog (int ,char*,int ) ;

int fpm_trace_close(pid_t pid)
{
 if (0 > ptrace(PTRACE_DETACH, pid, (void *) 1, 0)) {
  zlog(ZLOG_SYSERROR, "failed to ptrace(DETACH) child %d", pid);
  return -1;
 }
 traced_pid = 0;
 return 0;
}
