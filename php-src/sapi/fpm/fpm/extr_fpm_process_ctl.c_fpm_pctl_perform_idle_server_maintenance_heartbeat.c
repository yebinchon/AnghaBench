
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct fpm_event_s {int dummy; } ;
struct TYPE_2__ {scalar_t__ parent_pid; scalar_t__ is_child; } ;


 int FPM_EV_PERSIST ;
 short FPM_EV_TIMEOUT ;
 int FPM_IDLE_SERVER_MAINTENANCE_HEARTBEAT ;
 int fpm_clock_get (struct timeval*) ;
 int fpm_event_add (struct fpm_event_s*,int ) ;
 int fpm_event_set_timer (struct fpm_event_s*,int ,void (*) (struct fpm_event_s*,short,void*),int *) ;
 TYPE_1__ fpm_globals ;
 scalar_t__ fpm_pctl_can_spawn_children () ;
 int fpm_pctl_perform_idle_server_maintenance (struct timeval*) ;
 scalar_t__ getpid () ;

void fpm_pctl_perform_idle_server_maintenance_heartbeat(struct fpm_event_s *ev, short which, void *arg)
{
 static struct fpm_event_s heartbeat;
 struct timeval now;

 if (fpm_globals.parent_pid != getpid()) {
  return;
 }

 if (which == FPM_EV_TIMEOUT) {
  fpm_clock_get(&now);
  if (fpm_pctl_can_spawn_children()) {
   fpm_pctl_perform_idle_server_maintenance(&now);




   if (fpm_globals.is_child) {
    return;
   }
  }
  return;
 }


 fpm_event_set_timer(&heartbeat, FPM_EV_PERSIST, &fpm_pctl_perform_idle_server_maintenance_heartbeat, ((void*)0));
 fpm_event_add(&heartbeat, FPM_IDLE_SERVER_MAINTENANCE_HEARTBEAT);
}
