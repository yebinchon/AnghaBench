
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kill; int thread; int sem; int mutex; scalar_t__ thread_valid; } ;
typedef TYPE_1__ mp_media_t ;


 int os_sem_post (int ) ;
 int pthread_join (int ,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void mp_kill_thread(mp_media_t *m)
{
 if (m->thread_valid) {
  pthread_mutex_lock(&m->mutex);
  m->kill = 1;
  pthread_mutex_unlock(&m->mutex);
  os_sem_post(m->sem);

  pthread_join(m->thread, ((void*)0));
 }
}
