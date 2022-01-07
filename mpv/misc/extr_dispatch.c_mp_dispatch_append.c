
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_dispatch_queue {int interrupted; int wakeup_ctx; int (* wakeup_fn ) (int ) ;int lock; int cond; struct mp_dispatch_item* tail; struct mp_dispatch_item* head; } ;
struct mp_dispatch_item {scalar_t__ fn; scalar_t__ fn_data; struct mp_dispatch_item* next; scalar_t__ mergeable; } ;


 int pthread_cond_broadcast (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (int ) ;
 int talloc_free (struct mp_dispatch_item*) ;

__attribute__((used)) static void mp_dispatch_append(struct mp_dispatch_queue *queue,
                               struct mp_dispatch_item *item)
{
    pthread_mutex_lock(&queue->lock);
    if (item->mergeable) {
        for (struct mp_dispatch_item *cur = queue->head; cur; cur = cur->next) {
            if (cur->mergeable && cur->fn == item->fn &&
                cur->fn_data == item->fn_data)
            {
                talloc_free(item);
                pthread_mutex_unlock(&queue->lock);
                return;
            }
        }
    }

    if (queue->tail) {
        queue->tail->next = item;
    } else {
        queue->head = item;
    }
    queue->tail = item;



    pthread_cond_broadcast(&queue->cond);


    if (!queue->wakeup_fn)
        queue->interrupted = 1;
    pthread_mutex_unlock(&queue->lock);

    if (queue->wakeup_fn)
        queue->wakeup_fn(queue->wakeup_ctx);
}
