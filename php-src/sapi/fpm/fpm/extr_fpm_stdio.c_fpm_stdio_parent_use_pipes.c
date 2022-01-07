
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fpm_child_s {int ev_stderr; void* fd_stderr; int ev_stdout; void* fd_stdout; TYPE_1__* wp; } ;
struct TYPE_4__ {scalar_t__ catch_workers_output; } ;
struct TYPE_3__ {TYPE_2__* config; } ;


 int FPM_EV_READ ;
 int close (void*) ;
 void** fd_stderr ;
 void** fd_stdout ;
 int fpm_event_add (int *,int ) ;
 int fpm_event_set (int *,void*,int ,int ,struct fpm_child_s*) ;
 int fpm_stdio_child_said ;

int fpm_stdio_parent_use_pipes(struct fpm_child_s *child)
{
 if (0 == child->wp->config->catch_workers_output) {
  return 0;
 }

 close(fd_stdout[1]);
 close(fd_stderr[1]);

 child->fd_stdout = fd_stdout[0];
 child->fd_stderr = fd_stderr[0];

 fpm_event_set(&child->ev_stdout, child->fd_stdout, FPM_EV_READ, fpm_stdio_child_said, child);
 fpm_event_add(&child->ev_stdout, 0);

 fpm_event_set(&child->ev_stderr, child->fd_stderr, FPM_EV_READ, fpm_stdio_child_said, child);
 fpm_event_add(&child->ev_stderr, 0);
 return 0;
}
