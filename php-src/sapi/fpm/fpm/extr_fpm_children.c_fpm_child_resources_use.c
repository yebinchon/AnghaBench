
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpm_worker_pool_s {int scoreboard; struct fpm_worker_pool_s* next; } ;
struct fpm_child_s {int scoreboard_i; struct fpm_worker_pool_s* wp; } ;


 int fpm_child_free (struct fpm_child_s*) ;
 int fpm_scoreboard_child_use (int ,int ,int ) ;
 int fpm_scoreboard_free (int ) ;
 int fpm_stdio_child_use_pipes (struct fpm_child_s*) ;
 struct fpm_worker_pool_s* fpm_worker_all_pools ;
 int getpid () ;

__attribute__((used)) static void fpm_child_resources_use(struct fpm_child_s *child)
{
 struct fpm_worker_pool_s *wp;
 for (wp = fpm_worker_all_pools; wp; wp = wp->next) {
  if (wp == child->wp) {
   continue;
  }
  fpm_scoreboard_free(wp->scoreboard);
 }

 fpm_scoreboard_child_use(child->wp->scoreboard, child->scoreboard_i, getpid());
 fpm_stdio_child_use_pipes(child);
 fpm_child_free(child);
}
