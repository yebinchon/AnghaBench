
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int num_bufs; scalar_t__* refcnt; int num_tbufs; int * tbufs; int lock; TYPE_1__* queues; int counter; int * ts; } ;
struct TYPE_4__ {int head; int num; int tail; int* idx; int cv; int efd; int lock; int inited; } ;
typedef TYPE_1__ PoolQueue ;
typedef TYPE_2__ Pool ;


 int POOL_MAX_QUEUES ;
 int assert (int) ;
 int efd_write (int ) ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int tbuffer_dispatch (int *,int) ;

void pool_push(Pool *s, int idx) {
  pthread_mutex_lock(&s->lock);



  assert(idx >= 0 && idx < s->num_bufs);

  s->ts[idx] = s->counter;
  s->counter++;

  assert(s->refcnt[idx] > 0);
  s->refcnt[idx]--;

  int num_tbufs = s->num_tbufs;
  s->refcnt[idx] += num_tbufs;


  for (int i=0; i<POOL_MAX_QUEUES; i++) {
    PoolQueue *c = &s->queues[i];
    if (!c->inited) continue;

    pthread_mutex_lock(&c->lock);
    if (((c->head+1) % c->num) == c->tail) {

      pthread_mutex_unlock(&c->lock);
      continue;
    }

    s->refcnt[idx]++;

    c->idx[c->head] = idx;
    c->head = (c->head+1) % c->num;
    assert(c->head != c->tail);
    pthread_mutex_unlock(&c->lock);

    efd_write(c->efd);
    pthread_cond_signal(&c->cv);
  }

  pthread_mutex_unlock(&s->lock);

  for (int i=0; i<num_tbufs; i++) {
    tbuffer_dispatch(&s->tbufs[i], idx);
  }
}
