
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * jobs; } ;
typedef TYPE_1__ async_pool ;
typedef int ASYNC_JOB ;


 int async_job_free (int *) ;
 int * sk_ASYNC_JOB_pop (int *) ;

__attribute__((used)) static void async_empty_pool(async_pool *pool)
{
    ASYNC_JOB *job;

    if (pool == ((void*)0) || pool->jobs == ((void*)0))
        return;

    do {
        job = sk_ASYNC_JOB_pop(pool->jobs);
        async_job_free(job);
    } while (job);
}
