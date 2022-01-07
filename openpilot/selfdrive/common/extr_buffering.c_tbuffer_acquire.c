
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pending_idx; int num_bufs; int* reading; int lock; int efd; scalar_t__ stopped; int cv; } ;
typedef TYPE_1__ TBuffer ;


 int assert (int) ;
 int efd_clear (int ) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int tbuffer_acquire(TBuffer *tb) {
  pthread_mutex_lock(&tb->lock);

  if (tb->stopped) {
    pthread_mutex_unlock(&tb->lock);
    return -1;
  }

  while (tb->pending_idx == -1) {
    pthread_cond_wait(&tb->cv, &tb->lock);

    if (tb->stopped) {
      pthread_mutex_unlock(&tb->lock);
      return -1;
    }
  }

  efd_clear(tb->efd);

  int ret = tb->pending_idx;
  assert(ret < tb->num_bufs);

  tb->reading[ret] = 1;
  tb->pending_idx = -1;

  pthread_mutex_unlock(&tb->lock);

  return ret;
}
