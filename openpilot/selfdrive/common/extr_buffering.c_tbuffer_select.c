
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_bufs; int pending_idx; int lock; int * reading; } ;
typedef TYPE_1__ TBuffer ;


 int assert (int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int tbuffer_select(TBuffer *tb) {
  pthread_mutex_lock(&tb->lock);

  int i;
  for (i=0; i<tb->num_bufs; i++) {
    if (!tb->reading[i] && i != tb->pending_idx) {
      break;
    }
  }
  assert(i < tb->num_bufs);

  pthread_mutex_unlock(&tb->lock);
  return i;
}
