
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cond; int mutex; } ;
typedef TYPE_1__ os_event_t ;


 int bfree (TYPE_1__*) ;
 int pthread_cond_destroy (int *) ;
 int pthread_mutex_destroy (int *) ;

void os_event_destroy(os_event_t *event)
{
 if (event) {
  pthread_mutex_destroy(&event->mutex);
  pthread_cond_destroy(&event->cond);
  bfree(event);
 }
}
