
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_dispatch_queue {int locked; int locked_explicit; int lock_requests; int lock; int cond; int locked_explicit_thread; } ;


 int assert (int) ;
 int pthread_cond_broadcast (int *) ;
 int pthread_equal (int ,int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int pthread_self () ;

void mp_dispatch_unlock(struct mp_dispatch_queue *queue)
{
    pthread_mutex_lock(&queue->lock);
    assert(queue->locked);

    assert(queue->locked_explicit);
    assert(pthread_equal(queue->locked_explicit_thread, pthread_self()));

    queue->locked = 0;
    queue->locked_explicit = 0;
    queue->lock_requests -= 1;


    pthread_cond_broadcast(&queue->cond);
    pthread_mutex_unlock(&queue->lock);
}
