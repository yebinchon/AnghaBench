
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
typedef TYPE_1__ TBuffer ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int tbuffer_release_locked (TYPE_1__*,int) ;

void tbuffer_release(TBuffer *tb, int idx) {
  pthread_mutex_lock(&tb->lock);
  tbuffer_release_locked(tb, idx);
  pthread_mutex_unlock(&tb->lock);
}
