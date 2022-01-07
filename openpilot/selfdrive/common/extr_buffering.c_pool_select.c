
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_bufs; scalar_t__* refcnt; int* ts; int counter; int lock; int cb_cookie; int (* release_cb ) (int ,int) ;} ;
typedef TYPE_1__ Pool ;


 int printf (char*,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (int ,int) ;

int pool_select(Pool *s) {
  pthread_mutex_lock(&s->lock);

  int i;
  for (i=0; i<s->num_bufs; i++) {
    if (s->refcnt[i] == 0) {
      break;
    }
  }

  if (i >= s->num_bufs) {



    int min_k = 0;
    int min_ts = s->ts[0];
    for (int k=1; k<s->num_bufs; k++) {
      if (s->ts[k] < min_ts) {
        min_ts = s->ts[k];
        min_k = k;
      }
    }
    i = min_k;
    printf("pool is full! evicted %d\n", min_k);


    if (s->release_cb) {
      s->release_cb(s->cb_cookie, min_k);
    }
  }

  s->refcnt[i]++;

  s->ts[i] = s->counter;
  s->counter++;

  pthread_mutex_unlock(&s->lock);

  return i;
}
