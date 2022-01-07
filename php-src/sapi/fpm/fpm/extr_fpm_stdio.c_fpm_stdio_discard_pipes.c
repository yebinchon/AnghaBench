
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fpm_child_s {TYPE_2__* wp; } ;
struct TYPE_4__ {TYPE_1__* config; } ;
struct TYPE_3__ {scalar_t__ catch_workers_output; } ;


 int close (int ) ;
 int * fd_stderr ;
 int * fd_stdout ;

int fpm_stdio_discard_pipes(struct fpm_child_s *child)
{
 if (0 == child->wp->config->catch_workers_output) {
  return 0;
 }

 close(fd_stdout[1]);
 close(fd_stderr[1]);

 close(fd_stdout[0]);
 close(fd_stderr[0]);
 return 0;
}
