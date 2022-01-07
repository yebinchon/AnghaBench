
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpm_worker_pool_s {scalar_t__ limit_extensions; struct fpm_worker_pool_s* home; struct fpm_worker_pool_s* user; struct fpm_worker_pool_s* config; } ;


 int fpm_unix_free_socket_premissions (struct fpm_worker_pool_s*) ;
 int fpm_worker_pool_free_limit_extensions (scalar_t__) ;
 int free (struct fpm_worker_pool_s*) ;

void fpm_worker_pool_free(struct fpm_worker_pool_s *wp)
{
 if (wp->config) {
  free(wp->config);
 }
 if (wp->user) {
  free(wp->user);
 }
 if (wp->home) {
  free(wp->home);
 }
 if (wp->limit_extensions) {
  fpm_worker_pool_free_limit_extensions(wp->limit_extensions);
 }
 fpm_unix_free_socket_premissions(wp);
 free(wp);
}
