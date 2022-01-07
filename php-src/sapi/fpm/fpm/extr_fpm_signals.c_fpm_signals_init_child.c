
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int * sa_handler; int sa_flags; } ;
typedef int act_dfl ;
typedef int act ;


 int SA_RESTART ;
 int SIGCHLD ;
 int SIGINT ;
 int SIGQUIT ;
 int SIGTERM ;
 int SIGUSR1 ;
 int SIGUSR2 ;
 int * SIG_DFL ;
 int ZLOG_SYSERROR ;
 int close (int ) ;
 int memset (struct sigaction*,int ,int) ;
 int sig_soft_quit ;
 scalar_t__ sigaction (int ,struct sigaction*,int ) ;
 int * sp ;
 int zend_signal_init () ;
 int zlog (int ,char*) ;

int fpm_signals_init_child()
{
 struct sigaction act, act_dfl;

 memset(&act, 0, sizeof(act));
 memset(&act_dfl, 0, sizeof(act_dfl));

 act.sa_handler = &sig_soft_quit;
 act.sa_flags |= SA_RESTART;

 act_dfl.sa_handler = SIG_DFL;

 close(sp[0]);
 close(sp[1]);

 if (0 > sigaction(SIGTERM, &act_dfl, 0) ||
     0 > sigaction(SIGINT, &act_dfl, 0) ||
     0 > sigaction(SIGUSR1, &act_dfl, 0) ||
     0 > sigaction(SIGUSR2, &act_dfl, 0) ||
     0 > sigaction(SIGCHLD, &act_dfl, 0) ||
     0 > sigaction(SIGQUIT, &act, 0)) {

  zlog(ZLOG_SYSERROR, "failed to init child signals: sigaction()");
  return -1;
 }

 zend_signal_init();
 return 0;
}
