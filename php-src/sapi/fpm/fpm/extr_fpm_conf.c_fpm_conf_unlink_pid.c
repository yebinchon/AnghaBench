
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pid_file; } ;


 int ZLOG_SYSERROR ;
 TYPE_1__ fpm_global_config ;
 scalar_t__ unlink (scalar_t__) ;
 int zlog (int ,char*,scalar_t__) ;

int fpm_conf_unlink_pid()
{
 if (fpm_global_config.pid_file) {
  if (0 > unlink(fpm_global_config.pid_file)) {
   zlog(ZLOG_SYSERROR, "Unable to remove the PID file (%s).", fpm_global_config.pid_file);
   return -1;
  }
 }
 return 0;
}
