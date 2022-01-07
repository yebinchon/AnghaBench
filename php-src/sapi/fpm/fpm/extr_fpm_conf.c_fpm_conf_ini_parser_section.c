
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
struct fpm_worker_pool_s {TYPE_1__* config; struct fpm_worker_pool_s* next; } ;
struct fpm_worker_pool_config_s {int name; } ;
struct TYPE_2__ {char* name; } ;


 int ZLOG_ERROR ;
 char* Z_STRVAL_P (int *) ;
 struct fpm_worker_pool_s* current_wp ;
 struct fpm_worker_pool_s* fpm_worker_all_pools ;
 scalar_t__ fpm_worker_pool_config_alloc () ;
 int ini_filename ;
 int ini_lineno ;
 int strcasecmp (char*,char*) ;
 int strdup (char*) ;
 int zlog (int ,char*,int ,int ,char*) ;

__attribute__((used)) static void fpm_conf_ini_parser_section(zval *section, void *arg)
{
 struct fpm_worker_pool_s *wp;
 struct fpm_worker_pool_config_s *config;
 int *error = (int *)arg;


 if (!strcasecmp(Z_STRVAL_P(section), "global")) {
  current_wp = ((void*)0);
  return;
 }

 for (wp = fpm_worker_all_pools; wp; wp = wp->next) {
  if (!wp->config) continue;
  if (!wp->config->name) continue;
  if (!strcasecmp(wp->config->name, Z_STRVAL_P(section))) {

   current_wp = wp;
   return;
  }
 }


 config = (struct fpm_worker_pool_config_s *)fpm_worker_pool_config_alloc();
 if (!current_wp || !config) {
  zlog(ZLOG_ERROR, "[%s:%d] Unable to alloc a new WorkerPool for worker '%s'", ini_filename, ini_lineno, Z_STRVAL_P(section));
  *error = 1;
  return;
 }
 config->name = strdup(Z_STRVAL_P(section));
 if (!config->name) {
  zlog(ZLOG_ERROR, "[%s:%d] Unable to alloc memory for configuration name for worker '%s'", ini_filename, ini_lineno, Z_STRVAL_P(section));
  *error = 1;
  return;
 }
}
