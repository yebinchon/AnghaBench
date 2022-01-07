
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fpm_worker_pool_s {int scoreboard; int children; int config; struct fpm_worker_pool_s* next; } ;
struct TYPE_2__ {scalar_t__ parent_pid; } ;


 int FPM_CLEANUP_CHILD ;
 int fpm_children_free (int ) ;
 TYPE_1__ fpm_globals ;
 int fpm_scoreboard_free (int ) ;
 struct fpm_worker_pool_s* fpm_worker_all_pools ;
 int fpm_worker_pool_config_free (int ) ;
 int fpm_worker_pool_free (struct fpm_worker_pool_s*) ;
 scalar_t__ getpid () ;

__attribute__((used)) static void fpm_worker_pool_cleanup(int which, void *arg)
{
 struct fpm_worker_pool_s *wp, *wp_next;

 for (wp = fpm_worker_all_pools; wp; wp = wp_next) {
  wp_next = wp->next;
  fpm_worker_pool_config_free(wp->config);
  fpm_children_free(wp->children);
  if ((which & FPM_CLEANUP_CHILD) == 0 && fpm_globals.parent_pid == getpid()) {
   fpm_scoreboard_free(wp->scoreboard);
  }
  fpm_worker_pool_free(wp);
 }
 fpm_worker_all_pools = ((void*)0);
}
