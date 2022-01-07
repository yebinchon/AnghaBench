
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct fpm_scoreboard_proc_s {struct timeval tv; } ;
struct fpm_child_s {int scoreboard_i; TYPE_1__* wp; } ;
struct TYPE_2__ {int scoreboard; } ;


 struct fpm_scoreboard_proc_s* fpm_scoreboard_proc_get (int ,int ) ;

int fpm_request_last_activity(struct fpm_child_s *child, struct timeval *tv)
{
 struct fpm_scoreboard_proc_s *proc;

 if (!tv) return -1;

 proc = fpm_scoreboard_proc_get(child->wp->scoreboard, child->scoreboard_i);
 if (!proc) {
  return -1;
 }

 *tv = proc->tv;

 return 1;
}
