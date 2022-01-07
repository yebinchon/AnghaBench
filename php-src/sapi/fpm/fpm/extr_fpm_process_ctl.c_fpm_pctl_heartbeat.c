
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct fpm_event_s {int dummy; } ;
struct TYPE_2__ {scalar_t__ parent_pid; int heartbeat; } ;


 int FPM_EV_PERSIST ;
 short FPM_EV_TIMEOUT ;
 int FPM_PCTL_MIN_HEARTBEAT ;
 int MAX (int ,int ) ;
 int ZLOG_DEBUG ;
 int fpm_clock_get (struct timeval*) ;
 int fpm_event_add (struct fpm_event_s*,int ) ;
 int fpm_event_set_timer (struct fpm_event_s*,int ,void (*) (struct fpm_event_s*,short,void*),int *) ;
 TYPE_1__ fpm_globals ;
 int fpm_pctl_check_request_timeout (struct timeval*) ;
 scalar_t__ getpid () ;
 int zlog (int ,char*,int ) ;

void fpm_pctl_heartbeat(struct fpm_event_s *ev, short which, void *arg)
{
 static struct fpm_event_s heartbeat;
 struct timeval now;

 if (fpm_globals.parent_pid != getpid()) {
  return;
 }

 if (which == FPM_EV_TIMEOUT) {
  fpm_clock_get(&now);
  fpm_pctl_check_request_timeout(&now);
  return;
 }


 fpm_globals.heartbeat = MAX(fpm_globals.heartbeat, FPM_PCTL_MIN_HEARTBEAT);


 zlog(ZLOG_DEBUG, "heartbeat have been set up with a timeout of %dms", fpm_globals.heartbeat);
 fpm_event_set_timer(&heartbeat, FPM_EV_PERSIST, &fpm_pctl_heartbeat, ((void*)0));
 fpm_event_add(&heartbeat, fpm_globals.heartbeat);
}
