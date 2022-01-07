
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fpm_event_s {int fd; } ;
struct TYPE_2__ {scalar_t__ is_child; } ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ EWOULDBLOCK ;
 int FPM_PCTL_ACTION_SET ;
 int FPM_PCTL_STATE_FINISHING ;
 int FPM_PCTL_STATE_RELOADING ;
 int FPM_PCTL_STATE_TERMINATING ;
 int ZLOG_DEBUG ;
 int ZLOG_ERROR ;
 int ZLOG_NOTICE ;
 int ZLOG_SYSERROR ;
 int children_bury_timer ;
 scalar_t__ errno ;
 int fpm_event_add (int *,int ) ;
 int fpm_event_set_timer (int *,int ,int *,int *) ;
 TYPE_1__ fpm_globals ;
 int fpm_log_open (int) ;
 int fpm_pctl (int ,int ) ;
 int fpm_postponed_children_bury ;
 int fpm_stdio_open_error_log (int) ;
 int read (int,char*,int) ;
 int zlog (int ,char*) ;

__attribute__((used)) static void fpm_got_signal(struct fpm_event_s *ev, short which, void *arg)
{
 char c;
 int res, ret;
 int fd = ev->fd;

 do {
  do {
   res = read(fd, &c, 1);
  } while (res == -1 && errno == EINTR);

  if (res <= 0) {
   if (res < 0 && errno != EAGAIN && errno != EWOULDBLOCK) {
    zlog(ZLOG_SYSERROR, "unable to read from the signal pipe");
   }
   return;
  }

  switch (c) {
   case 'C' :
    zlog(ZLOG_DEBUG, "received SIGCHLD");




    fpm_event_set_timer(&children_bury_timer, 0, &fpm_postponed_children_bury, ((void*)0));
    fpm_event_add(&children_bury_timer, 0);
    break;
   case 'I' :
    zlog(ZLOG_DEBUG, "received SIGINT");
    zlog(ZLOG_NOTICE, "Terminating ...");
    fpm_pctl(FPM_PCTL_STATE_TERMINATING, FPM_PCTL_ACTION_SET);
    break;
   case 'T' :
    zlog(ZLOG_DEBUG, "received SIGTERM");
    zlog(ZLOG_NOTICE, "Terminating ...");
    fpm_pctl(FPM_PCTL_STATE_TERMINATING, FPM_PCTL_ACTION_SET);
    break;
   case 'Q' :
    zlog(ZLOG_DEBUG, "received SIGQUIT");
    zlog(ZLOG_NOTICE, "Finishing ...");
    fpm_pctl(FPM_PCTL_STATE_FINISHING, FPM_PCTL_ACTION_SET);
    break;
   case '1' :
    zlog(ZLOG_DEBUG, "received SIGUSR1");
    if (0 == fpm_stdio_open_error_log(1)) {
     zlog(ZLOG_NOTICE, "error log file re-opened");
    } else {
     zlog(ZLOG_ERROR, "unable to re-opened error log file");
    }

    ret = fpm_log_open(1);
    if (ret == 0) {
     zlog(ZLOG_NOTICE, "access log file re-opened");
    } else if (ret == -1) {
     zlog(ZLOG_ERROR, "unable to re-opened access log file");
    }


    break;
   case '2' :
    zlog(ZLOG_DEBUG, "received SIGUSR2");
    zlog(ZLOG_NOTICE, "Reloading in progress ...");
    fpm_pctl(FPM_PCTL_STATE_RELOADING, FPM_PCTL_ACTION_SET);
    break;
  }

  if (fpm_globals.is_child) {
   break;
  }
 } while (1);
 return;
}
