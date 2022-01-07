
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIG_BLOCK ;
 int ZLOG_SYSERROR ;
 int block_sigset ;
 scalar_t__ sigprocmask (int ,int *,int *) ;
 int zlog (int ,char*) ;

int fpm_signals_block()
{
 if (0 > sigprocmask(SIG_BLOCK, &block_sigset, ((void*)0))) {
  zlog(ZLOG_SYSERROR, "failed to block signals");
  return -1;
 }
 return 0;
}
