
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t num_tbufs; int stopped; int lock; int num_bufs; int * tbufs; } ;
typedef int TBuffer ;
typedef TYPE_1__ Pool ;


 size_t POOL_MAX_TBUFS ;
 int assert (int) ;
 scalar_t__ pool_release ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int tbuffer_init2 (int *,int ,char*,void (*) (void*,int),TYPE_1__*) ;
 int tbuffer_stop (int *) ;

TBuffer* pool_get_tbuffer(Pool *s) {
  pthread_mutex_lock(&s->lock);

  assert(s->num_tbufs < POOL_MAX_TBUFS);
  TBuffer* tbuf = &s->tbufs[s->num_tbufs];
  s->num_tbufs++;
  tbuffer_init2(tbuf, s->num_bufs,
                "pool", (void (*)(void *, int))pool_release, s);

  bool stopped = s->stopped;
  pthread_mutex_unlock(&s->lock);




  if (stopped) {
    tbuffer_stop(tbuf);
  }
  return tbuf;
}
