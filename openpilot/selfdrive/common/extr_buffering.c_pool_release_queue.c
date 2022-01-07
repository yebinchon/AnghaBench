
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int lock; } ;
struct TYPE_5__ {int num; int* idx; int inited; int cv; int lock; int efd; TYPE_2__* pool; } ;
typedef TYPE_1__ PoolQueue ;
typedef TYPE_2__ Pool ;


 int close (int ) ;
 int free (int*) ;
 int pool_release_locked (TYPE_2__*,int) ;
 int pthread_cond_destroy (int *) ;
 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void pool_release_queue(PoolQueue *c) {
  Pool *s = c->pool;

  pthread_mutex_lock(&s->lock);
  pthread_mutex_lock(&c->lock);

  for (int i=0; i<c->num; i++) {
    if (c->idx[i] != -1) {
      pool_release_locked(s, c->idx[i]);
    }
  }

  close(c->efd);
  free(c->idx);

  c->inited = 0;

  pthread_mutex_unlock(&c->lock);

  pthread_mutex_destroy(&c->lock);
  pthread_cond_destroy(&c->cv);

  pthread_mutex_unlock(&s->lock);
}
