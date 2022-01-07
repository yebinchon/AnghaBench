
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fpm_worker_pool_s {int dummy; } ;
struct TYPE_2__ {int error_log_fd; } ;


 int ZLOG_SYSLOG ;
 int close (int) ;
 int closelog () ;
 TYPE_1__ fpm_globals ;
 int zlog_set_fd (int) ;

int fpm_stdio_init_child(struct fpm_worker_pool_s *wp)
{
 if (fpm_globals.error_log_fd > 0) {
  close(fpm_globals.error_log_fd);
 }
 fpm_globals.error_log_fd = -1;
 zlog_set_fd(-1);

 return 0;
}
