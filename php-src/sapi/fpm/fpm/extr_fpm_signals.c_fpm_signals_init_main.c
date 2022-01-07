
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_mask; int sa_handler; } ;
typedef int act ;


 int AF_UNIX ;
 int FD_CLOEXEC ;
 int F_SETFD ;
 int SIGCHLD ;
 int SIGINT ;
 int SIGQUIT ;
 int SIGTERM ;
 int SIGUSR1 ;
 int SIGUSR2 ;
 int SOCK_STREAM ;
 int ZLOG_DEBUG ;
 int ZLOG_SYSERROR ;
 scalar_t__ fcntl (int ,int ,int ) ;
 scalar_t__ fd_set_blocked (int ,int ) ;
 scalar_t__ fpm_signals_unblock () ;
 int memset (struct sigaction*,int ,int) ;
 int sig_handler ;
 scalar_t__ sigaction (int ,struct sigaction*,int ) ;
 int sigfillset (int *) ;
 scalar_t__ socketpair (int ,int ,int ,int *) ;
 int * sp ;
 int zlog (int ,char*) ;

int fpm_signals_init_main()
{
 struct sigaction act;

 if (0 > socketpair(AF_UNIX, SOCK_STREAM, 0, sp)) {
  zlog(ZLOG_SYSERROR, "failed to init signals: socketpair()");
  return -1;
 }

 if (0 > fd_set_blocked(sp[0], 0) || 0 > fd_set_blocked(sp[1], 0)) {
  zlog(ZLOG_SYSERROR, "failed to init signals: fd_set_blocked()");
  return -1;
 }

 if (0 > fcntl(sp[0], F_SETFD, FD_CLOEXEC) || 0 > fcntl(sp[1], F_SETFD, FD_CLOEXEC)) {
  zlog(ZLOG_SYSERROR, "falied to init signals: fcntl(F_SETFD, FD_CLOEXEC)");
  return -1;
 }

 memset(&act, 0, sizeof(act));
 act.sa_handler = sig_handler;
 sigfillset(&act.sa_mask);

 if (0 > sigaction(SIGTERM, &act, 0) ||
     0 > sigaction(SIGINT, &act, 0) ||
     0 > sigaction(SIGUSR1, &act, 0) ||
     0 > sigaction(SIGUSR2, &act, 0) ||
     0 > sigaction(SIGCHLD, &act, 0) ||
     0 > sigaction(SIGQUIT, &act, 0)) {

  zlog(ZLOG_SYSERROR, "failed to init signals: sigaction()");
  return -1;
 }

 zlog(ZLOG_DEBUG, "Unblocking all signals");
 if (0 > fpm_signals_unblock()) {
  return -1;
 }
 return 0;
}
