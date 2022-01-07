
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int lock; int q; int cv; } ;
struct TYPE_7__ {void* data; } ;
typedef TYPE_1__ QueueEntry ;
typedef TYPE_2__ Queue ;


 scalar_t__ TAILQ_EMPTY (int *) ;
 TYPE_1__* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int entries ;
 int free (TYPE_1__*) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void* queue_pop(Queue *q) {
  pthread_mutex_lock(&q->lock);
  while (TAILQ_EMPTY(&q->q)) {
    pthread_cond_wait(&q->cv, &q->lock);
  }
  QueueEntry *entry = TAILQ_FIRST(&q->q);
  TAILQ_REMOVE(&q->q, entry, entries);
  pthread_mutex_unlock(&q->lock);

  void* r = entry->data;
  free(entry);
  return r;
}
