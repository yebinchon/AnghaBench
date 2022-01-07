
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
typedef TYPE_1__ Pool ;


 int pool_release_locked (TYPE_1__*,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void pool_release(Pool *s, int idx) {
  pthread_mutex_lock(&s->lock);
  pool_release_locked(s, idx);
  pthread_mutex_unlock(&s->lock);
}
