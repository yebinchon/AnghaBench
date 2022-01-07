
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fpm_child_s {TYPE_2__* wp; } ;
struct TYPE_4__ {TYPE_1__* config; } ;
struct TYPE_3__ {scalar_t__ catch_workers_output; } ;


 int ZLOG_SYSERROR ;
 int close (int ) ;
 scalar_t__ fd_set_blocked (int ,int ) ;
 int * fd_stderr ;
 int * fd_stdout ;
 scalar_t__ pipe (int *) ;
 int zlog (int ,char*) ;

int fpm_stdio_prepare_pipes(struct fpm_child_s *child)
{
 if (0 == child->wp->config->catch_workers_output) {
  return 0;
 }

 if (0 > pipe(fd_stdout)) {
  zlog(ZLOG_SYSERROR, "failed to prepare the stdout pipe");
  return -1;
 }

 if (0 > pipe(fd_stderr)) {
  zlog(ZLOG_SYSERROR, "failed to prepare the stderr pipe");
  close(fd_stdout[0]);
  close(fd_stdout[1]);
  return -1;
 }

 if (0 > fd_set_blocked(fd_stdout[0], 0) || 0 > fd_set_blocked(fd_stderr[0], 0)) {
  zlog(ZLOG_SYSERROR, "failed to unblock pipes");
  close(fd_stdout[0]);
  close(fd_stdout[1]);
  close(fd_stderr[0]);
  close(fd_stderr[1]);
  return -1;
 }
 return 0;
}
