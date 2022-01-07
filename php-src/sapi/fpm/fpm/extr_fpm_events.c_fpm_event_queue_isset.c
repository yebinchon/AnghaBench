
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpm_event_s {int dummy; } ;
struct fpm_event_queue_s {struct fpm_event_queue_s* next; struct fpm_event_s* ev; } ;



__attribute__((used)) static struct fpm_event_s *fpm_event_queue_isset(struct fpm_event_queue_s *queue, struct fpm_event_s *ev)
{
 if (!ev) {
  return ((void*)0);
 }

 while (queue) {
  if (queue->ev == ev) {
   return ev;
  }
  queue = queue->next;
 }

 return ((void*)0);
}
