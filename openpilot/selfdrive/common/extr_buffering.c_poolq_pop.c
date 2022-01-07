
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t head; size_t tail; int* idx; int num; int num_bufs; int lock; int efd; scalar_t__ stopped; int cv; } ;
typedef TYPE_1__ PoolQueue ;


 int assert (int) ;
 int efd_clear (int ) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int poolq_pop(PoolQueue *c) {
  pthread_mutex_lock(&c->lock);

  if (c->stopped) {
    pthread_mutex_unlock(&c->lock);
    return -1;
  }

  while (c->head == c->tail) {
    pthread_cond_wait(&c->cv, &c->lock);

    if (c->stopped) {
      pthread_mutex_unlock(&c->lock);
      return -1;
    }
  }



  assert(c->head != c->tail);

  int r = c->idx[c->tail];
  c->idx[c->tail] = -1;
  c->tail = (c->tail+1) % c->num;


  if (c->head == c->tail) {
    efd_clear(c->efd);
  }



  assert(r >= 0 && r < c->num_bufs);

  pthread_mutex_unlock(&c->lock);

  return r;
}
