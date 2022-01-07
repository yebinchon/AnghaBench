
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fpm_event_s {int dummy; } ;
struct TYPE_4__ {scalar_t__ systemd_interval; } ;
struct TYPE_3__ {scalar_t__ parent_pid; } ;


 int FPM_EV_PERSIST ;
 short FPM_EV_TIMEOUT ;
 int ZLOG_DEBUG ;
 int ZLOG_NOTICE ;
 int ZLOG_WARNING ;
 int fpm_event_add (struct fpm_event_s*,scalar_t__) ;
 int fpm_event_set_timer (struct fpm_event_s*,int ,void (*) (struct fpm_event_s*,short,void*),int *) ;
 TYPE_2__ fpm_global_config ;
 TYPE_1__ fpm_globals ;
 int fpm_systemd () ;
 scalar_t__ getpid () ;
 scalar_t__ sd_notifyf (int ,char*,unsigned long) ;
 int zlog (int ,char*,...) ;

void fpm_systemd_heartbeat(struct fpm_event_s *ev, short which, void *arg)
{
 static struct fpm_event_s heartbeat;

 if (fpm_globals.parent_pid != getpid()) {
  return;
 }

 if (which == FPM_EV_TIMEOUT) {
  fpm_systemd();

  return;
 }

 if (0 > sd_notifyf(0, "READY=1\n"
             "STATUS=Ready to handle connections\n"
             "MAINPID=%lu",
             (unsigned long) getpid())) {
  zlog(ZLOG_WARNING, "failed to notify start to systemd");
 } else {
  zlog(ZLOG_DEBUG, "have notify start to systemd");
 }


 if (fpm_global_config.systemd_interval > 0) {
  fpm_event_set_timer(&heartbeat, FPM_EV_PERSIST, &fpm_systemd_heartbeat, ((void*)0));
  fpm_event_add(&heartbeat, fpm_global_config.systemd_interval);
  zlog(ZLOG_NOTICE, "systemd monitor interval set to %dms", fpm_global_config.systemd_interval);
 } else {
  zlog(ZLOG_NOTICE, "systemd monitor disabled");
 }
}
