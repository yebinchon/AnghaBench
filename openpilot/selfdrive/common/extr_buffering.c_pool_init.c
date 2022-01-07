
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_bufs; int* refcnt; int* ts; int counter; int lock; } ;
typedef TYPE_1__ Pool ;


 int assert (int) ;
 scalar_t__ calloc (int,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int pthread_mutex_init (int *,int *) ;

void pool_init(Pool *s, int num_bufs) {
  assert(num_bufs > 3);

  memset(s, 0, sizeof(*s));
  s->num_bufs = num_bufs;

  s->refcnt = (int*)calloc(num_bufs, sizeof(int));
  s->ts = (int*)calloc(num_bufs, sizeof(int));

  s->counter = 1;

  pthread_mutex_init(&s->lock, ((void*)0));
}
