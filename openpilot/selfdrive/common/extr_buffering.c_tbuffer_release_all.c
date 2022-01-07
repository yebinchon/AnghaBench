
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_bufs; int lock; scalar_t__* reading; } ;
typedef TYPE_1__ TBuffer ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int tbuffer_release_locked (TYPE_1__*,int) ;

void tbuffer_release_all(TBuffer *tb) {
  pthread_mutex_lock(&tb->lock);
  for (int i=0; i<tb->num_bufs; i++) {
    if (tb->reading[i]) {
      tbuffer_release_locked(tb, i);
    }
  }
  pthread_mutex_unlock(&tb->lock);
}
