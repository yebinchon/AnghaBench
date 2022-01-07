
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int signalled; int mutex; int manual; int cond; } ;
typedef TYPE_1__ os_event_t ;


 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int os_event_wait(os_event_t *event)
{
 int code = 0;
 pthread_mutex_lock(&event->mutex);
 if (!event->signalled)
  code = pthread_cond_wait(&event->cond, &event->mutex);

 if (code == 0) {
  if (!event->manual)
   event->signalled = 0;
  pthread_mutex_unlock(&event->mutex);
 }

 return code;
}
