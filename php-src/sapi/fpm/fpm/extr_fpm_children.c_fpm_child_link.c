
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fpm_worker_pool_s {struct fpm_child_s* children; int running_children; } ;
struct fpm_child_s {struct fpm_child_s* prev; struct fpm_child_s* next; struct fpm_worker_pool_s* wp; } ;
struct TYPE_2__ {int running_children; } ;


 TYPE_1__ fpm_globals ;

__attribute__((used)) static void fpm_child_link(struct fpm_child_s *child)
{
 struct fpm_worker_pool_s *wp = child->wp;

 ++wp->running_children;
 ++fpm_globals.running_children;

 child->next = wp->children;
 if (child->next) {
  child->next->prev = child;
 }
 child->prev = 0;
 wp->children = child;
}
