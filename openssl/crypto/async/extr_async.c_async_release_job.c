
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int jobs; } ;
typedef TYPE_1__ async_pool ;
struct TYPE_6__ {int * funcargs; } ;
typedef TYPE_2__ ASYNC_JOB ;


 scalar_t__ CRYPTO_THREAD_get_local (int *) ;
 int OPENSSL_free (int *) ;
 int poolkey ;
 int sk_ASYNC_JOB_push (int ,TYPE_2__*) ;

__attribute__((used)) static void async_release_job(ASYNC_JOB *job) {
    async_pool *pool;

    pool = (async_pool *)CRYPTO_THREAD_get_local(&poolkey);
    OPENSSL_free(job->funcargs);
    job->funcargs = ((void*)0);
    sk_ASYNC_JOB_push(pool->jobs, job);
}
