
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int ZLOG_ALERT ;
 int ZLOG_DEBUG ;
 int ZLOG_ERROR ;
 int ZLOG_NOTICE ;
 int ZLOG_WARNING ;
 char* Z_STRVAL_P (int *) ;
 int strcasecmp (char*,char*) ;

__attribute__((used)) static char *fpm_conf_set_log_level(zval *value, void **config, intptr_t offset)
{
 char *val = Z_STRVAL_P(value);
 int log_level;

 if (!strcasecmp(val, "debug")) {
  log_level = ZLOG_DEBUG;
 } else if (!strcasecmp(val, "notice")) {
  log_level = ZLOG_NOTICE;
 } else if (!strcasecmp(val, "warning") || !strcasecmp(val, "warn")) {
  log_level = ZLOG_WARNING;
 } else if (!strcasecmp(val, "error")) {
  log_level = ZLOG_ERROR;
 } else if (!strcasecmp(val, "alert")) {
  log_level = ZLOG_ALERT;
 } else {
  return "invalid value for 'log_level'";
 }

 * (int *) ((char *) *config + offset) = log_level;
 return ((void*)0);
}
