
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct key_value_s {int key; struct key_value_s* next; } ;
struct fpm_worker_pool_s {TYPE_1__* config; } ;
struct TYPE_2__ {struct key_value_s* php_admin_values; struct key_value_s* php_values; } ;


 int ZEND_INI_SYSTEM ;
 int ZEND_INI_USER ;
 int ZLOG_ERROR ;
 int fpm_php_apply_defines_ex (struct key_value_s*,int ) ;
 int zlog (int ,char*,int ) ;

__attribute__((used)) static int fpm_php_apply_defines(struct fpm_worker_pool_s *wp)
{
 struct key_value_s *kv;

 for (kv = wp->config->php_values; kv; kv = kv->next) {
  if (fpm_php_apply_defines_ex(kv, ZEND_INI_USER) == -1) {
   zlog(ZLOG_ERROR, "Unable to set php_value '%s'", kv->key);
  }
 }

 for (kv = wp->config->php_admin_values; kv; kv = kv->next) {
  if (fpm_php_apply_defines_ex(kv, ZEND_INI_SYSTEM) == -1) {
   zlog(ZLOG_ERROR, "Unable to set php_admin_value '%s'", kv->key);
  }
 }

 return 0;
}
