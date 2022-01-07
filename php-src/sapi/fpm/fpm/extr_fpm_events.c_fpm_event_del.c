
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpm_event_s {scalar_t__ index; } ;


 scalar_t__ fpm_event_queue_del (int *,struct fpm_event_s*) ;
 int fpm_event_queue_fd ;
 int fpm_event_queue_timer ;

int fpm_event_del(struct fpm_event_s *ev)
{
 if (ev->index >= 0 && fpm_event_queue_del(&fpm_event_queue_fd, ev) != 0) {
  return -1;
 }

 if (ev->index < 0 && fpm_event_queue_del(&fpm_event_queue_timer, ev) != 0) {
  return -1;
 }

 return 0;
}
