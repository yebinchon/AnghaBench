
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int PTRACE_ATTACH ;
 int ZLOG_SYSERROR ;
 scalar_t__ ptrace (int ,int ,int ,int ) ;
 int zlog (int ,char*,int ) ;

int fpm_trace_signal(pid_t pid)
{
 if (0 > ptrace(PTRACE_ATTACH, pid, 0, 0)) {
  zlog(ZLOG_SYSERROR, "failed to ptrace(ATTACH) child %d", pid);
  return -1;
 }
 return 0;
}
