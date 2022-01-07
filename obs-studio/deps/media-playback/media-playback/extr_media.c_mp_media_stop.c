
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int active; int reset; int stopping; int mutex; int sem; } ;
typedef TYPE_1__ mp_media_t ;


 int os_sem_post (int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void mp_media_stop(mp_media_t *m)
{
 pthread_mutex_lock(&m->mutex);
 if (m->active) {
  m->reset = 1;
  m->active = 0;
  m->stopping = 1;
  os_sem_post(m->sem);
 }
 pthread_mutex_unlock(&m->mutex);
}
