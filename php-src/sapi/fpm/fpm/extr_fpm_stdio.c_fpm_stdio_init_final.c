
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ error_log_fd; } ;


 scalar_t__ STDERR_FILENO ;
 scalar_t__ STDOUT_FILENO ;
 int ZLOG_SYSERROR ;
 scalar_t__ ZLOG_SYSLOG ;
 scalar_t__ dup2 (scalar_t__,scalar_t__) ;
 TYPE_1__ fpm_globals ;
 scalar_t__ fpm_use_error_log () ;
 int zlog (int ,char*) ;
 int zlog_set_launched () ;

int fpm_stdio_init_final()
{
 if (fpm_use_error_log()) {

  if (fpm_globals.error_log_fd > 0 && fpm_globals.error_log_fd != STDERR_FILENO) {


   if (0 > dup2(fpm_globals.error_log_fd, STDERR_FILENO)) {
    zlog(ZLOG_SYSERROR, "failed to init stdio: dup2()");
    return -1;
   }
  }






 }
 zlog_set_launched();
 return 0;
}
