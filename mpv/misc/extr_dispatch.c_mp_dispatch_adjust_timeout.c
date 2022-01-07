
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_dispatch_queue {scalar_t__ wait; int lock; int cond; scalar_t__ in_process; } ;
typedef scalar_t__ int64_t ;


 int pthread_cond_broadcast (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void mp_dispatch_adjust_timeout(struct mp_dispatch_queue *queue, int64_t until)
{
    pthread_mutex_lock(&queue->lock);
    if (queue->in_process && queue->wait > until) {
        queue->wait = until;
        pthread_cond_broadcast(&queue->cond);
    }
    pthread_mutex_unlock(&queue->lock);
}
