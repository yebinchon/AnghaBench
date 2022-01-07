
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int num_tbufs; int stopped; int lock; TYPE_1__* queues; int * tbufs; } ;
struct TYPE_4__ {int stopped; int cv; int efd; int lock; int inited; } ;
typedef TYPE_1__ PoolQueue ;
typedef TYPE_2__ Pool ;


 int POOL_MAX_QUEUES ;
 int efd_write (int ) ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int tbuffer_stop (int *) ;

void pool_stop(Pool *s) {
  for (int i=0; i<s->num_tbufs; i++) {
    tbuffer_stop(&s->tbufs[i]);
  }

  pthread_mutex_lock(&s->lock);
  s->stopped = 1;
  for (int i=0; i<POOL_MAX_QUEUES; i++) {
    PoolQueue *c = &s->queues[i];
    if (!c->inited) continue;

    pthread_mutex_lock(&c->lock);
    c->stopped = 1;
    pthread_mutex_unlock(&c->lock);
    efd_write(c->efd);
    pthread_cond_signal(&c->cv);
  }
  pthread_mutex_unlock(&s->lock);
}
