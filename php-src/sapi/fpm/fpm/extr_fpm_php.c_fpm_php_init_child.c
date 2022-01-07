
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpm_worker_pool_s {int * limit_extensions; } ;


 scalar_t__ fpm_php_apply_defines (struct fpm_worker_pool_s*) ;
 scalar_t__ fpm_php_set_allowed_clients (struct fpm_worker_pool_s*) ;
 int * limit_extensions ;

int fpm_php_init_child(struct fpm_worker_pool_s *wp)
{
 if (0 > fpm_php_apply_defines(wp) ||
  0 > fpm_php_set_allowed_clients(wp)) {
  return -1;
 }

 if (wp->limit_extensions) {

  limit_extensions = wp->limit_extensions;
  wp->limit_extensions = ((void*)0);
 }
 return 0;
}
