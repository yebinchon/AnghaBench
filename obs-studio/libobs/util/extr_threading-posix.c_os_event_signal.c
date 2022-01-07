
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int signalled; int mutex; int cond; } ;
typedef TYPE_1__ os_event_t ;


 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int os_event_signal(os_event_t *event)
{
 int code = 0;

 pthread_mutex_lock(&event->mutex);
 code = pthread_cond_signal(&event->cond);
 event->signalled = 1;
 pthread_mutex_unlock(&event->mutex);

 return code;
}
