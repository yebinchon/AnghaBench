
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_thread_pool {int dummy; } ;


 int thread_pool_add (struct mp_thread_pool*,void (*) (void*),void*,int) ;

bool mp_thread_pool_run(struct mp_thread_pool *pool, void (*fn)(void *ctx),
                        void *fn_ctx)
{
    return thread_pool_add(pool, fn, fn_ctx, 0);
}
