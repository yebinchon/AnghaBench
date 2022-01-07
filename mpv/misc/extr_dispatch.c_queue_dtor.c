
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_dispatch_queue {int lock; int cond; int locked; int lock_requests; int in_process; int head; } ;


 int assert (int) ;
 int pthread_cond_destroy (int *) ;
 int pthread_mutex_destroy (int *) ;

__attribute__((used)) static void queue_dtor(void *p)
{
    struct mp_dispatch_queue *queue = p;
    assert(!queue->head);
    assert(!queue->in_process);
    assert(!queue->lock_requests);
    assert(!queue->locked);
    pthread_cond_destroy(&queue->cond);
    pthread_mutex_destroy(&queue->lock);
}
