
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int signalled; int mutex; } ;
typedef TYPE_1__ os_event_t ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void os_event_reset(os_event_t *event)
{
 pthread_mutex_lock(&event->mutex);
 event->signalled = 0;
 pthread_mutex_unlock(&event->mutex);
}
