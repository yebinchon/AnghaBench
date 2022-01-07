
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_thread_pool {int num_threads; int threads; } ;
typedef int pthread_t ;


 int MP_TARRAY_APPEND (struct mp_thread_pool*,int ,int ,int ) ;
 scalar_t__ pthread_create (int *,int *,int ,struct mp_thread_pool*) ;
 int worker_thread ;

__attribute__((used)) static bool add_thread(struct mp_thread_pool *pool)
{
    pthread_t thread;

    if (pthread_create(&thread, ((void*)0), worker_thread, pool) != 0)
        return 0;

    MP_TARRAY_APPEND(pool, pool->threads, pool->num_threads, thread);
    return 1;
}
