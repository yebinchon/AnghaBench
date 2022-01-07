
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_thread_pool {int terminate; int num_threads; scalar_t__ num_work; int lock; int wakeup; int * threads; } ;
typedef int pthread_t ;


 int assert (int) ;
 int pthread_cond_broadcast (int *) ;
 int pthread_cond_destroy (int *) ;
 int pthread_join (int ,int *) ;
 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void thread_pool_dtor(void *ctx)
{
    struct mp_thread_pool *pool = ctx;


    pthread_mutex_lock(&pool->lock);

    pool->terminate = 1;
    pthread_cond_broadcast(&pool->wakeup);

    pthread_t *threads = pool->threads;
    int num_threads = pool->num_threads;

    pool->threads = ((void*)0);
    pool->num_threads = 0;

    pthread_mutex_unlock(&pool->lock);

    for (int n = 0; n < num_threads; n++)
        pthread_join(threads[n], ((void*)0));

    assert(pool->num_work == 0);
    assert(pool->num_threads == 0);
    pthread_cond_destroy(&pool->wakeup);
    pthread_mutex_destroy(&pool->lock);
}
