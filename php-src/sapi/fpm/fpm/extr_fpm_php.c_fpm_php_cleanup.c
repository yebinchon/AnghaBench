
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fpm_worker_pool_free_limit_extensions (scalar_t__) ;
 scalar_t__ limit_extensions ;
 int php_module_shutdown () ;
 int sapi_shutdown () ;

__attribute__((used)) static void fpm_php_cleanup(int which, void *arg)
{
 php_module_shutdown();
 sapi_shutdown();
 if (limit_extensions) {
  fpm_worker_pool_free_limit_extensions(limit_extensions);
 }
}
