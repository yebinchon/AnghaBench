
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work {void (* member_0 ) (void*) ;void* member_1; } ;
struct mp_thread_pool {scalar_t__ busy_threads; scalar_t__ num_work; scalar_t__ num_threads; scalar_t__ max_threads; int lock; int wakeup; int work; } ;


 int MP_TARRAY_INSERT_AT (struct mp_thread_pool*,int ,scalar_t__,int ,struct work) ;
 int add_thread (struct mp_thread_pool*) ;
 int assert (void (*) (void*)) ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static bool thread_pool_add(struct mp_thread_pool *pool, void (*fn)(void *ctx),
                            void *fn_ctx, bool allow_queue)
{
    bool ok = 1;

    assert(fn);

    pthread_mutex_lock(&pool->lock);
    struct work work = {fn, fn_ctx};





    if (pool->busy_threads + pool->num_work + 1 > pool->num_threads &&
        pool->num_threads < pool->max_threads)
    {
        if (!add_thread(pool)) {

            ok = allow_queue && pool->num_threads > 0;
        }
    }

    if (ok) {
        MP_TARRAY_INSERT_AT(pool, pool->work, pool->num_work, 0, work);
        pthread_cond_signal(&pool->wakeup);
    }

    pthread_mutex_unlock(&pool->lock);
    return ok;
}
