
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fpm_scoreboard_proc_s {scalar_t__ request_stage; } ;
struct fpm_child_s {int scoreboard_i; TYPE_1__* wp; } ;
struct TYPE_2__ {int scoreboard; } ;


 scalar_t__ FPM_REQUEST_ACCEPTING ;
 struct fpm_scoreboard_proc_s* fpm_scoreboard_proc_get (int ,int ) ;

int fpm_request_is_idle(struct fpm_child_s *child)
{
 struct fpm_scoreboard_proc_s *proc;


 proc = fpm_scoreboard_proc_get(child->wp->scoreboard, child->scoreboard_i);
 if (!proc) {
  return 0;
 }

 return proc->request_stage == FPM_REQUEST_ACCEPTING;
}
