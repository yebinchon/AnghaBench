
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ syslog_ident; int log_limit; scalar_t__ error_log; scalar_t__ pid_file; scalar_t__ events_mechanism; } ;
struct TYPE_3__ {scalar_t__ config; } ;


 int ZLOG_DEFAULT_LIMIT ;
 TYPE_2__ fpm_global_config ;
 TYPE_1__ fpm_globals ;
 int free (scalar_t__) ;

__attribute__((used)) static void fpm_conf_cleanup(int which, void *arg)
{
 free(fpm_global_config.pid_file);
 free(fpm_global_config.error_log);
 free(fpm_global_config.events_mechanism);
 fpm_global_config.pid_file = 0;
 fpm_global_config.error_log = 0;
 fpm_global_config.log_limit = ZLOG_DEFAULT_LIMIT;




 free(fpm_globals.config);
}
