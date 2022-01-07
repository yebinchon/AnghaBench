
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpm_worker_pool_s {struct fpm_child_s* children; struct fpm_worker_pool_s* next; } ;
struct fpm_child_s {scalar_t__ pid; struct fpm_child_s* next; } ;
typedef scalar_t__ pid_t ;


 struct fpm_worker_pool_s* fpm_worker_all_pools ;

__attribute__((used)) static struct fpm_child_s *fpm_child_find(pid_t pid)
{
 struct fpm_worker_pool_s *wp;
 struct fpm_child_s *child = 0;

 for (wp = fpm_worker_all_pools; wp; wp = wp->next) {

  for (child = wp->children; child; child = child->next) {
   if (child->pid == pid) {
    break;
   }
  }

  if (child) break;
 }

 if (!child) {
  return 0;
 }

 return child;
}
