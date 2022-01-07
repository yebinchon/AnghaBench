
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int lock; int cv; int q; } ;
struct TYPE_7__ {void* data; } ;
typedef TYPE_1__ QueueEntry ;
typedef TYPE_2__ Queue ;


 int TAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 int assert (TYPE_1__*) ;
 TYPE_1__* calloc (int,int) ;
 int entries ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void queue_push(Queue *q, void *data) {
  QueueEntry *entry = calloc(1, sizeof(QueueEntry));
  assert(entry);
  entry->data = data;

  pthread_mutex_lock(&q->lock);
  TAILQ_INSERT_TAIL(&q->q, entry, entries);
  pthread_cond_signal(&q->cv);
  pthread_mutex_unlock(&q->lock);
}
