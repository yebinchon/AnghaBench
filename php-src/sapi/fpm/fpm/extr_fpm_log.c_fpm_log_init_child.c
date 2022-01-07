
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fpm_worker_pool_s {int log_fd; struct fpm_worker_pool_s* next; TYPE_1__* config; } ;
struct TYPE_2__ {scalar_t__ access_format; scalar_t__* access_log; } ;


 int close (int) ;
 int fpm_log_fd ;
 int fpm_log_format ;
 struct fpm_worker_pool_s* fpm_worker_all_pools ;
 int strdup (scalar_t__) ;

int fpm_log_init_child(struct fpm_worker_pool_s *wp)
{
 if (!wp || !wp->config) {
  return -1;
 }

 if (wp->config->access_log && *wp->config->access_log) {
  if (wp->config->access_format) {
   fpm_log_format = strdup(wp->config->access_format);
  }
 }

 if (fpm_log_fd == -1) {
  fpm_log_fd = wp->log_fd;
 }


 for (wp = fpm_worker_all_pools; wp; wp = wp->next) {
  if (wp->log_fd > -1 && wp->log_fd != fpm_log_fd) {
   close(wp->log_fd);
   wp->log_fd = -1;
  }
 }

 return 0;
}
