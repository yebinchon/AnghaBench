
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* pid_file; } ;
struct TYPE_3__ {char* pid; int test_successful; scalar_t__* config; scalar_t__* prefix; } ;


 int FPM_CLEANUP_ALL ;
 scalar_t__* PHP_SYSCONFDIR ;
 int ZLOG_ERROR ;
 int ZLOG_NOTICE ;
 int ZLOG_SYSERROR ;
 int efree (char*) ;
 scalar_t__ fpm_cleanup_add (int ,int ,int ) ;
 int fpm_conf_cleanup ;
 int fpm_conf_dump () ;
 int fpm_conf_is_dir (scalar_t__*) ;
 int fpm_conf_load_ini_file (scalar_t__*) ;
 scalar_t__ fpm_conf_post_process (int) ;
 TYPE_2__ fpm_global_config ;
 TYPE_1__ fpm_globals ;
 int spprintf (char**,int ,char*,scalar_t__*) ;
 void* strdup (char*) ;
 int zlog (int ,char*,...) ;

int fpm_conf_init_main(int test_conf, int force_daemon)
{
 int ret;

 if (fpm_globals.prefix && *fpm_globals.prefix) {
  if (!fpm_conf_is_dir(fpm_globals.prefix)) {
   zlog(ZLOG_ERROR, "the global prefix '%s' does not exist or is not a directory", fpm_globals.prefix);
   return -1;
  }
 }

 if (fpm_globals.pid && *fpm_globals.pid) {
  fpm_global_config.pid_file = strdup(fpm_globals.pid);
 }

 if (fpm_globals.config == ((void*)0)) {
  char *tmp;

  if (fpm_globals.prefix == ((void*)0)) {
   spprintf(&tmp, 0, "%s/php-fpm.conf", PHP_SYSCONFDIR);
  } else {
   spprintf(&tmp, 0, "%s/etc/php-fpm.conf", fpm_globals.prefix);
  }

  if (!tmp) {
   zlog(ZLOG_SYSERROR, "spprintf() failed (tmp for fpm_globals.config)");
   return -1;
  }

  fpm_globals.config = strdup(tmp);
  efree(tmp);

  if (!fpm_globals.config) {
   zlog(ZLOG_SYSERROR, "spprintf() failed (fpm_globals.config)");
   return -1;
  }
 }

 ret = fpm_conf_load_ini_file(fpm_globals.config);

 if (0 > ret) {
  zlog(ZLOG_ERROR, "failed to load configuration file '%s'", fpm_globals.config);
  return -1;
 }

 if (0 > fpm_conf_post_process(force_daemon)) {
  zlog(ZLOG_ERROR, "failed to post process the configuration");
  return -1;
 }

 if (test_conf) {
  if (test_conf > 1) {
   fpm_conf_dump();
  }
  zlog(ZLOG_NOTICE, "configuration file %s test is successful\n", fpm_globals.config);
  fpm_globals.test_successful = 1;
  return -1;
 }

 if (0 > fpm_cleanup_add(FPM_CLEANUP_ALL, fpm_conf_cleanup, 0)) {
  return -1;
 }

 return 0;
}
