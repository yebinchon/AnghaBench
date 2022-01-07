
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fpm_worker_pool_s {int log_fd; TYPE_1__* config; struct fpm_worker_pool_s* next; } ;
struct TYPE_2__ {int access_log; } ;


 int FD_CLOEXEC ;
 int F_GETFD ;
 int F_SETFD ;
 int O_APPEND ;
 int O_CREAT ;
 int O_WRONLY ;
 int SIGQUIT ;
 int S_IRUSR ;
 int S_IWUSR ;
 int ZLOG_DEBUG ;
 int ZLOG_SYSERROR ;
 int ZLOG_WARNING ;
 int close (int) ;
 int dup2 (int,int) ;
 int fcntl (int,int ,...) ;
 int fpm_pctl_kill_all (int ) ;
 struct fpm_worker_pool_s* fpm_worker_all_pools ;
 int open (int ,int,int) ;
 int zlog (int ,char*,...) ;

int fpm_log_open(int reopen)
{
 struct fpm_worker_pool_s *wp;
 int ret = 1;

 int fd;
 for (wp = fpm_worker_all_pools; wp; wp = wp->next) {
  if (!wp->config->access_log) {
   continue;
  }
  ret = 0;

  fd = open(wp->config->access_log, O_WRONLY | O_APPEND | O_CREAT, S_IRUSR | S_IWUSR);
  if (0 > fd) {
   zlog(ZLOG_SYSERROR, "failed to open access log (%s)", wp->config->access_log);
   return -1;
  } else {
   zlog(ZLOG_DEBUG, "open access log (%s)", wp->config->access_log);
  }

  if (reopen) {
   dup2(fd, wp->log_fd);
   close(fd);
   fd = wp->log_fd;
   fpm_pctl_kill_all(SIGQUIT);
  } else {
   wp->log_fd = fd;
  }

  if (0 > fcntl(fd, F_SETFD, fcntl(fd, F_GETFD) | FD_CLOEXEC)) {
   zlog(ZLOG_WARNING, "failed to change attribute of access_log");
  }
 }

 return ret;
}
