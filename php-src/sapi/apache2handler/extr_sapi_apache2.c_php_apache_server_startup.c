
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* process; } ;
typedef TYPE_2__ server_rec ;
typedef int apr_pool_t ;
struct TYPE_9__ {scalar_t__ (* startup ) (TYPE_3__*) ;scalar_t__ php_ini_path_override; } ;
struct TYPE_7__ {int pool; } ;


 int DONE ;
 int OK ;
 scalar_t__ SUCCESS ;
 int ZEND_TSRMLS_CACHE_UPDATE () ;
 scalar_t__ apache2_php_ini_path_override ;
 TYPE_3__ apache2_sapi_module ;
 int apr_pool_cleanup_null ;
 int apr_pool_cleanup_register (int *,int *,int ,int ) ;
 int apr_pool_userdata_get (void**,char const*,int ) ;
 int apr_pool_userdata_set (void const*,char const*,int ,int ) ;
 int php_apache_add_version (int *) ;
 int php_apache_server_shutdown ;
 int php_tsrm_startup () ;
 int sapi_startup (TYPE_3__*) ;
 scalar_t__ stub1 (TYPE_3__*) ;
 int zend_signal_startup () ;

__attribute__((used)) static int
php_apache_server_startup(apr_pool_t *pconf, apr_pool_t *plog, apr_pool_t *ptemp, server_rec *s)
{
 void *data = ((void*)0);
 const char *userdata_key = "apache2hook_post_config";



 apr_pool_userdata_get(&data, userdata_key, s->process->pool);
 if (data == ((void*)0)) {





  apr_pool_userdata_set((const void *)1, userdata_key, apr_pool_cleanup_null, s->process->pool);
  return OK;
 }


 if (apache2_php_ini_path_override) {
  apache2_sapi_module.php_ini_path_override = apache2_php_ini_path_override;
 }







 zend_signal_startup();

 sapi_startup(&apache2_sapi_module);
 if (apache2_sapi_module.startup(&apache2_sapi_module) != SUCCESS) {
  return DONE;
 }
 apr_pool_cleanup_register(pconf, ((void*)0), php_apache_server_shutdown, apr_pool_cleanup_null);
 php_apache_add_version(pconf);

 return OK;
}
