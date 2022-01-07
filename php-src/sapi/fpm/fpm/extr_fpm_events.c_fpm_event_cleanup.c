
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fpm_event_queue_destroy (int *) ;
 int fpm_event_queue_fd ;
 int fpm_event_queue_timer ;

__attribute__((used)) static void fpm_event_cleanup(int which, void *arg)
{
 fpm_event_queue_destroy(&fpm_event_queue_timer);
 fpm_event_queue_destroy(&fpm_event_queue_fd);
}
