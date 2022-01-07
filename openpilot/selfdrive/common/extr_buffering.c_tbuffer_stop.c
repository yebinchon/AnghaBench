
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stopped; int lock; int cv; int efd; } ;
typedef TYPE_1__ TBuffer ;


 int efd_write (int ) ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void tbuffer_stop(TBuffer *tb) {
  pthread_mutex_lock(&tb->lock);
  tb->stopped = 1;
  efd_write(tb->efd);
  pthread_cond_signal(&tb->cv);
  pthread_mutex_unlock(&tb->lock);
}
