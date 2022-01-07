
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int active; int reset; int looping; int sem; int mutex; } ;
typedef TYPE_1__ mp_media_t ;


 int os_sem_post (int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void mp_media_play(mp_media_t *m, bool loop)
{
 pthread_mutex_lock(&m->mutex);

 if (m->active)
  m->reset = 1;

 m->looping = loop;
 m->active = 1;

 pthread_mutex_unlock(&m->mutex);

 os_sem_post(m->sem);
}
