
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int error_log; int syslog_facility; int syslog_ident; } ;
struct TYPE_3__ {int error_log_fd; } ;


 int FD_CLOEXEC ;
 int F_GETFD ;
 int F_SETFD ;
 int LOG_CONS ;
 int LOG_PID ;
 int O_APPEND ;
 int O_CREAT ;
 int O_WRONLY ;
 int STDERR_FILENO ;
 int S_IRUSR ;
 int S_IWUSR ;
 int ZLOG_SYSERROR ;
 int ZLOG_SYSLOG ;
 int ZLOG_WARNING ;
 int close (int) ;
 int dup2 (int,int) ;
 int fcntl (int,int ,...) ;
 TYPE_2__ fpm_global_config ;
 TYPE_1__ fpm_globals ;
 scalar_t__ fpm_use_error_log () ;
 int open (int ,int,int) ;
 int php_openlog (int ,int,int ) ;
 int strcasecmp (int ,char*) ;
 int zlog (int ,char*,...) ;
 int zlog_set_fd (int) ;

int fpm_stdio_open_error_log(int reopen)
{
 int fd;
 fd = open(fpm_global_config.error_log, O_WRONLY | O_APPEND | O_CREAT, S_IRUSR | S_IWUSR);
 if (0 > fd) {
  zlog(ZLOG_SYSERROR, "failed to open error_log (%s)", fpm_global_config.error_log);
  return -1;
 }

 if (reopen) {
  if (fpm_use_error_log()) {
   dup2(fd, STDERR_FILENO);
  }

  dup2(fd, fpm_globals.error_log_fd);
  close(fd);
  fd = fpm_globals.error_log_fd;
 } else {
  fpm_globals.error_log_fd = fd;
  if (fpm_use_error_log()) {
   zlog_set_fd(fpm_globals.error_log_fd);
  }
 }
 if (0 > fcntl(fd, F_SETFD, fcntl(fd, F_GETFD) | FD_CLOEXEC)) {
  zlog(ZLOG_WARNING, "failed to change attribute of error_log");
 }
 return 0;
}
