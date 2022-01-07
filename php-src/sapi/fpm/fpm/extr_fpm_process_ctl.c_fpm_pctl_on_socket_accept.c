
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fpm_worker_pool_s {scalar_t__ running_children; int warn_max_children; TYPE_1__* config; struct fpm_child_s* children; int scoreboard; scalar_t__ socket_event_set; } ;
struct fpm_event_s {int dummy; } ;
struct fpm_child_s {struct fpm_child_s* next; } ;
struct TYPE_4__ {scalar_t__ parent_pid; scalar_t__ is_child; } ;
struct TYPE_3__ {scalar_t__ pm_max_children; int name; } ;


 int FPM_SCOREBOARD_ACTION_INC ;
 int ZLOG_DEBUG ;
 int ZLOG_WARNING ;
 int fpm_children_make (struct fpm_worker_pool_s*,int,int,int) ;
 TYPE_2__ fpm_globals ;
 scalar_t__ fpm_request_is_idle (struct fpm_child_s*) ;
 int fpm_scoreboard_update (int ,int ,int ,int ,int ,int,int ,int ,int ) ;
 scalar_t__ getpid () ;
 int zlog (int ,char*,int ,...) ;

void fpm_pctl_on_socket_accept(struct fpm_event_s *ev, short which, void *arg)
{
 struct fpm_worker_pool_s *wp = (struct fpm_worker_pool_s *)arg;
 struct fpm_child_s *child;


 if (fpm_globals.parent_pid != getpid()) {


  return;
 }

 wp->socket_event_set = 0;



 if (wp->running_children >= wp->config->pm_max_children) {
  if (!wp->warn_max_children) {
   fpm_scoreboard_update(0, 0, 0, 0, 0, 1, 0, FPM_SCOREBOARD_ACTION_INC, wp->scoreboard);
   zlog(ZLOG_WARNING, "[pool %s] server reached max_children setting (%d), consider raising it", wp->config->name, wp->config->pm_max_children);
   wp->warn_max_children = 1;
  }

  return;
 }

 for (child = wp->children; child; child = child->next) {

  if (fpm_request_is_idle(child)) {
   return;
  }
 }

 wp->warn_max_children = 0;
 fpm_children_make(wp, 1, 1, 1);

 if (fpm_globals.is_child) {
  return;
 }

 zlog(ZLOG_DEBUG, "[pool %s] got accept without idle child available .... I forked", wp->config->name);
}
