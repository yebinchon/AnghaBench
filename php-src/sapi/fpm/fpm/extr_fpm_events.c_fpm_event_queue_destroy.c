
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fpm_event_queue_s {struct fpm_event_queue_s* next; } ;
struct TYPE_2__ {int (* clean ) () ;} ;


 struct fpm_event_queue_s* fpm_event_queue_fd ;
 int free (struct fpm_event_queue_s*) ;
 TYPE_1__* module ;
 int stub1 () ;

__attribute__((used)) static void fpm_event_queue_destroy(struct fpm_event_queue_s **queue)
{
 struct fpm_event_queue_s *q, *tmp;

 if (!queue) {
  return;
 }

 if (*queue == fpm_event_queue_fd && module->clean) {
  module->clean();
 }

 q = *queue;
 while (q) {
  tmp = q;
  q = q->next;

  free(tmp);
 }
 *queue = ((void*)0);
}
