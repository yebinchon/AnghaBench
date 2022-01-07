
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_dispatch_queue {int lock; struct mp_dispatch_item* tail; struct mp_dispatch_item* head; } ;
struct mp_dispatch_item {scalar_t__ fn; void* fn_data; struct mp_dispatch_item* next; } ;
typedef scalar_t__ mp_dispatch_fn ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int talloc_free (struct mp_dispatch_item*) ;

void mp_dispatch_cancel_fn(struct mp_dispatch_queue *queue,
                           mp_dispatch_fn fn, void *fn_data)
{
    pthread_mutex_lock(&queue->lock);
    struct mp_dispatch_item **pcur = &queue->head;
    queue->tail = ((void*)0);
    while (*pcur) {
        struct mp_dispatch_item *cur = *pcur;
        if (cur->fn == fn && cur->fn_data == fn_data) {
            *pcur = cur->next;
            talloc_free(cur);
        } else {
            queue->tail = cur;
            pcur = &cur->next;
        }
    }
    pthread_mutex_unlock(&queue->lock);
}
