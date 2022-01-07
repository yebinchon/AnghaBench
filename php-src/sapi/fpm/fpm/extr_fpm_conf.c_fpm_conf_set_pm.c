
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct fpm_worker_pool_config_s {int pm; } ;


 int PM_STYLE_DYNAMIC ;
 int PM_STYLE_ONDEMAND ;
 int PM_STYLE_STATIC ;
 char* Z_STRVAL_P (int *) ;
 int strcasecmp (char*,char*) ;

__attribute__((used)) static char *fpm_conf_set_pm(zval *value, void **config, intptr_t offset)
{
 char *val = Z_STRVAL_P(value);
 struct fpm_worker_pool_config_s *c = *config;
 if (!strcasecmp(val, "static")) {
  c->pm = PM_STYLE_STATIC;
 } else if (!strcasecmp(val, "dynamic")) {
  c->pm = PM_STYLE_DYNAMIC;
 } else if (!strcasecmp(val, "ondemand")) {
  c->pm = PM_STYLE_ONDEMAND;
 } else {
  return "invalid process manager (static, dynamic or ondemand)";
 }
 return ((void*)0);
}
