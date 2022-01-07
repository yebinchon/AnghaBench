
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIG_UNBLOCK ;
 int ZLOG_SYSERROR ;
 int sigfillset (int *) ;
 scalar_t__ sigprocmask (int ,int *,int *) ;
 int zlog (int ,char*) ;

int fpm_signals_unblock()
{


 sigset_t all_signals;
 sigfillset(&all_signals);
 if (0 > sigprocmask(SIG_UNBLOCK, &all_signals, ((void*)0))) {
  zlog(ZLOG_SYSERROR, "failed to unblock signals");
  return -1;
 }
 return 0;
}
