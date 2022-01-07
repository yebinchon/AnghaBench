
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int systemd_interval; int systemd_watchdog; } ;


 int FPM_SYSTEMD_DEFAULT_HEARTBEAT ;
 int ZLOG_DEBUG ;
 int ZLOG_NOTICE ;
 int ZLOG_WARNING ;
 long atol (char*) ;
 TYPE_1__ fpm_global_config ;
 char* getenv (char*) ;
 int zlog (int ,char*,...) ;

int fpm_systemd_conf()
{
 char *watchdog;
 int interval = 0;

 watchdog = getenv("WATCHDOG_USEC");
 if (watchdog) {

  interval = (int)(atol(watchdog) / 2000L);
  zlog(ZLOG_DEBUG, "WATCHDOG_USEC=%s, interval=%d", watchdog, interval);
 }

 if (interval > 1000) {
  if (fpm_global_config.systemd_interval > 0) {
   zlog(ZLOG_WARNING, "systemd_interval option ignored");
  }
  zlog(ZLOG_NOTICE, "systemd watchdog configured to %.3gsec", (float)interval / 1000.0);
  fpm_global_config.systemd_watchdog = 1;
  fpm_global_config.systemd_interval = interval;

 } else if (fpm_global_config.systemd_interval < 0) {

  fpm_global_config.systemd_interval = FPM_SYSTEMD_DEFAULT_HEARTBEAT;

 } else {

  fpm_global_config.systemd_interval *= 1000;
 }
 return 0;
}
