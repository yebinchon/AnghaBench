
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int lock; int q; } ;
struct TYPE_7__ {void* data; } ;
typedef TYPE_1__ QueueEntry ;
typedef TYPE_2__ Queue ;


 int TAILQ_EMPTY (int *) ;
 TYPE_1__* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int entries ;
 int free (TYPE_1__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void* queue_try_pop(Queue *q) {
  pthread_mutex_lock(&q->lock);

  void* r = ((void*)0);
  if (!TAILQ_EMPTY(&q->q)) {
    QueueEntry *entry = TAILQ_FIRST(&q->q);
    TAILQ_REMOVE(&q->q, entry, entries);
    r = entry->data;
    free(entry);
  }

  pthread_mutex_unlock(&q->lock);
  return r;
}
