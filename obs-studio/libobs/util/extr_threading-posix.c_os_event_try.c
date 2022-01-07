
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int signalled; int mutex; int manual; } ;
typedef TYPE_1__ os_event_t ;


 int EAGAIN ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int os_event_try(os_event_t *event)
{
 int ret = EAGAIN;

 pthread_mutex_lock(&event->mutex);
 if (event->signalled) {
  if (!event->manual)
   event->signalled = 0;
  ret = 0;
 }
 pthread_mutex_unlock(&event->mutex);

 return ret;
}
