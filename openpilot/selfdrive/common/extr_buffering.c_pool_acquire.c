
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_bufs; int lock; int * refcnt; } ;
typedef TYPE_1__ Pool ;


 int assert (int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void pool_acquire(Pool *s, int idx) {
  pthread_mutex_lock(&s->lock);

  assert(idx >= 0 && idx < s->num_bufs);

  s->refcnt[idx]++;

  pthread_mutex_unlock(&s->lock);
}
