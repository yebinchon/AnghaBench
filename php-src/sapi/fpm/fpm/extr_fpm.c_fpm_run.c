
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fpm_worker_pool_s {struct fpm_worker_pool_s* next; } ;
struct TYPE_2__ {int max_requests; int listening_socket; } ;


 int FPM_CLEANUP_CHILD ;
 int FPM_PCTL_ACTION_SET ;
 int FPM_PCTL_STATE_TERMINATING ;
 int fpm_children_create_initial (struct fpm_worker_pool_s*) ;
 int fpm_cleanups_run (int ) ;
 int fpm_event_loop (int) ;
 TYPE_1__ fpm_globals ;
 int fpm_pctl (int ,int ) ;
 struct fpm_worker_pool_s* fpm_worker_all_pools ;

int fpm_run(int *max_requests)
{
 struct fpm_worker_pool_s *wp;


 for (wp = fpm_worker_all_pools; wp; wp = wp->next) {
  int is_parent;

  is_parent = fpm_children_create_initial(wp);

  if (!is_parent) {
   goto run_child;
  }


  if (is_parent == 2) {
   fpm_pctl(FPM_PCTL_STATE_TERMINATING, FPM_PCTL_ACTION_SET);
   fpm_event_loop(1);
  }
 }


 fpm_event_loop(0);

run_child:

 fpm_cleanups_run(FPM_CLEANUP_CHILD);

 *max_requests = fpm_globals.max_requests;
 return fpm_globals.listening_socket;
}
