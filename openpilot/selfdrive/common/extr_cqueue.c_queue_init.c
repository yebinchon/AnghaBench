
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cv; int lock; int q; } ;
typedef TYPE_1__ Queue ;


 int TAILQ_INIT (int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int pthread_cond_init (int *,int *) ;
 int pthread_mutex_init (int *,int *) ;

void queue_init(Queue *q) {
  memset(q, 0, sizeof(*q));
  TAILQ_INIT(&q->q);
  pthread_mutex_init(&q->lock, ((void*)0));
  pthread_cond_init(&q->cv, ((void*)0));
}
