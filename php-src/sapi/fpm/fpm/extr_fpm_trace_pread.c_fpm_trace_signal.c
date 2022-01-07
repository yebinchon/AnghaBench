
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int FPM_PCTL_STOP ;
 int ZLOG_SYSERROR ;
 scalar_t__ fpm_pctl_kill (int ,int ) ;
 int zlog (int ,char*,int ) ;

int fpm_trace_signal(pid_t pid)
{
 if (0 > fpm_pctl_kill(pid, FPM_PCTL_STOP)) {
  zlog(ZLOG_SYSERROR, "failed to send SIGSTOP to %d", pid);
  return -1;
 }
 return 0;
}
