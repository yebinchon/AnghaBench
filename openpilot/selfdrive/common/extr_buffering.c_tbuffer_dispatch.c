
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pending_idx; int lock; int cv; int efd; int cb_cookie; int (* release_cb ) (int ,int) ;} ;
typedef TYPE_1__ TBuffer ;


 int efd_write (int ) ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (int ,int) ;

void tbuffer_dispatch(TBuffer *tb, int idx) {
  pthread_mutex_lock(&tb->lock);

  if (tb->pending_idx != -1) {

    if (tb->release_cb) {
      tb->release_cb(tb->cb_cookie, tb->pending_idx);
    }
    tb->pending_idx = -1;
  }

  tb->pending_idx = idx;

  efd_write(tb->efd);
  pthread_cond_signal(&tb->cv);

  pthread_mutex_unlock(&tb->lock);
}
