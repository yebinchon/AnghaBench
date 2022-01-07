
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct mp_dispatch_queue {int in_process; int locked; int interrupted; int lock; int wait; int cond; int * tail; struct mp_dispatch_item* head; scalar_t__ lock_requests; int in_process_thread; } ;
struct mp_dispatch_item {int completed; scalar_t__ asynchronous; int fn_data; int (* fn ) (int ) ;struct mp_dispatch_item* next; } ;


 int assert (int) ;
 int mp_add_timeout (int ,double) ;
 int mp_time_us () ;
 struct timespec mp_time_us_to_timespec (int ) ;
 int pthread_cond_broadcast (int *) ;
 scalar_t__ pthread_cond_timedwait (int *,int *,struct timespec*) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int pthread_self () ;
 int stub1 (int ) ;
 int talloc_free (struct mp_dispatch_item*) ;

void mp_dispatch_queue_process(struct mp_dispatch_queue *queue, double timeout)
{
    pthread_mutex_lock(&queue->lock);
    queue->wait = timeout > 0 ? mp_add_timeout(mp_time_us(), timeout) : 0;
    assert(!queue->in_process);
    queue->in_process = 1;
    queue->in_process_thread = pthread_self();

    if (queue->lock_requests)
        pthread_cond_broadcast(&queue->cond);
    while (1) {
        if (queue->lock_requests) {

            pthread_cond_wait(&queue->cond, &queue->lock);
        } else if (queue->head) {
            struct mp_dispatch_item *item = queue->head;
            queue->head = item->next;
            if (!queue->head)
                queue->tail = ((void*)0);
            item->next = ((void*)0);




            assert(!queue->locked);
            queue->locked = 1;
            pthread_mutex_unlock(&queue->lock);

            item->fn(item->fn_data);

            pthread_mutex_lock(&queue->lock);
            assert(queue->locked);
            queue->locked = 0;

            pthread_cond_broadcast(&queue->cond);
            if (item->asynchronous) {
                talloc_free(item);
            } else {
                item->completed = 1;
            }
        } else if (queue->wait > 0 && !queue->interrupted) {
            struct timespec ts = mp_time_us_to_timespec(queue->wait);
            if (pthread_cond_timedwait(&queue->cond, &queue->lock, &ts))
                queue->wait = 0;
        } else {
            break;
        }
    }
    assert(!queue->locked);
    queue->in_process = 0;
    queue->interrupted = 0;
    pthread_mutex_unlock(&queue->lock);
}
