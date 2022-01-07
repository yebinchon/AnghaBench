
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_dispatch_queue {int locked_explicit; int lock_requests; int locked; int lock; int locked_explicit_thread; int cond; scalar_t__ in_process; int wakeup_ctx; int (* wakeup_fn ) (int ) ;int in_process_thread; } ;


 int assert (int) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_equal (int ,int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int pthread_self () ;
 int stub1 (int ) ;

void mp_dispatch_lock(struct mp_dispatch_queue *queue)
{
    pthread_mutex_lock(&queue->lock);

    if (queue->in_process)
        assert(!pthread_equal(queue->in_process_thread, pthread_self()));

    if (queue->locked_explicit)
        assert(!pthread_equal(queue->locked_explicit_thread, pthread_self()));
    queue->lock_requests += 1;



    while (!queue->in_process) {
        pthread_mutex_unlock(&queue->lock);
        if (queue->wakeup_fn)
            queue->wakeup_fn(queue->wakeup_ctx);
        pthread_mutex_lock(&queue->lock);
        if (queue->in_process)
            break;
        pthread_cond_wait(&queue->cond, &queue->lock);
    }

    while (!queue->in_process || queue->locked)
        pthread_cond_wait(&queue->cond, &queue->lock);

    assert(queue->lock_requests);
    assert(!queue->locked);
    assert(!queue->locked_explicit);
    queue->locked = 1;
    queue->locked_explicit = 1;
    queue->locked_explicit_thread = pthread_self();
    pthread_mutex_unlock(&queue->lock);
}
