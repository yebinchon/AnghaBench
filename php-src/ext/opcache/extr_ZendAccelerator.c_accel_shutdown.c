
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int on_modify; } ;
typedef TYPE_1__ zend_ini_entry ;
typedef scalar_t__ zend_bool ;


 int EG (int ) ;
 int ZCG (int ) ;
 scalar_t__ ZCSG (int ) ;
 int accel_blacklist ;
 int accel_globals_id ;
 int accel_post_shutdown ;
 int accel_reset_pcre_cache () ;
 int accel_startup_ok ;
 int accelerator_orig_compile_file ;
 int enabled ;
 scalar_t__ file_cache_only ;
 int ini_directives ;
 int orig_include_path_on_modify ;
 int orig_post_shutdown_cb ;
 int preload_script ;
 int preload_shutdown () ;
 int ts_free_id (int ) ;
 int zend_accel_blacklist_shutdown (int *) ;
 int zend_compile_file ;
 TYPE_1__* zend_hash_str_find_ptr (int ,char*,int) ;
 int zend_jit_shutdown () ;
 int zend_optimizer_shutdown () ;
 int zend_post_shutdown_cb ;

void accel_shutdown(void)
{
 zend_ini_entry *ini_entry;
 zend_bool _file_cache_only = 0;





 zend_optimizer_shutdown();

 zend_accel_blacklist_shutdown(&accel_blacklist);

 if (!ZCG(enabled) || !accel_startup_ok) {



  return;
 }

 if (ZCSG(preload_script)) {
  preload_shutdown();
 }

 _file_cache_only = file_cache_only;

 accel_reset_pcre_cache();





 if (!_file_cache_only) {

  orig_post_shutdown_cb = zend_post_shutdown_cb;
  zend_post_shutdown_cb = accel_post_shutdown;
 }

 zend_compile_file = accelerator_orig_compile_file;

 if ((ini_entry = zend_hash_str_find_ptr(EG(ini_directives), "include_path", sizeof("include_path")-1)) != ((void*)0)) {
  ini_entry->on_modify = orig_include_path_on_modify;
 }
}
