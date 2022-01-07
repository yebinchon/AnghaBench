
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {size_t max_size; size_t curr_size; int * jobs; } ;
typedef TYPE_1__ async_pool ;
struct TYPE_11__ {int * funcargs; int fibrectx; } ;
typedef TYPE_2__ ASYNC_JOB ;


 int ASYNC_F_ASYNC_INIT_THREAD ;
 int ASYNC_R_FAILED_TO_SET_POOL ;
 int ASYNC_R_INVALID_POOL_SIZE ;
 int ASYNCerr (int ,int ) ;
 int CRYPTO_THREAD_set_local (int *,TYPE_1__*) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_INIT_ASYNC ;
 int OPENSSL_free (TYPE_1__*) ;
 int OPENSSL_init_crypto (int ,int *) ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int async_delete_thread_state ;
 int async_empty_pool (TYPE_1__*) ;
 int async_fibre_makecontext (int *) ;
 int async_job_free (TYPE_2__*) ;
 TYPE_2__* async_job_new () ;
 int ossl_init_thread_start (int *,int *,int ) ;
 int poolkey ;
 int sk_ASYNC_JOB_free (int *) ;
 int * sk_ASYNC_JOB_new_reserve (int *,size_t) ;
 int sk_ASYNC_JOB_push (int *,TYPE_2__*) ;

int ASYNC_init_thread(size_t max_size, size_t init_size)
{
    async_pool *pool;
    size_t curr_size = 0;

    if (init_size > max_size) {
        ASYNCerr(ASYNC_F_ASYNC_INIT_THREAD, ASYNC_R_INVALID_POOL_SIZE);
        return 0;
    }

    if (!OPENSSL_init_crypto(OPENSSL_INIT_ASYNC, ((void*)0)))
        return 0;

    if (!ossl_init_thread_start(((void*)0), ((void*)0), async_delete_thread_state))
        return 0;

    pool = OPENSSL_zalloc(sizeof(*pool));
    if (pool == ((void*)0)) {
        ASYNCerr(ASYNC_F_ASYNC_INIT_THREAD, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    pool->jobs = sk_ASYNC_JOB_new_reserve(((void*)0), init_size);
    if (pool->jobs == ((void*)0)) {
        ASYNCerr(ASYNC_F_ASYNC_INIT_THREAD, ERR_R_MALLOC_FAILURE);
        OPENSSL_free(pool);
        return 0;
    }

    pool->max_size = max_size;


    while (init_size--) {
        ASYNC_JOB *job;
        job = async_job_new();
        if (job == ((void*)0) || !async_fibre_makecontext(&job->fibrectx)) {




            async_job_free(job);
            break;
        }
        job->funcargs = ((void*)0);
        sk_ASYNC_JOB_push(pool->jobs, job);
        curr_size++;
    }
    pool->curr_size = curr_size;
    if (!CRYPTO_THREAD_set_local(&poolkey, pool)) {
        ASYNCerr(ASYNC_F_ASYNC_INIT_THREAD, ASYNC_R_FAILED_TO_SET_POOL);
        goto err;
    }

    return 1;
err:
    async_empty_pool(pool);
    sk_ASYNC_JOB_free(pool->jobs);
    OPENSSL_free(pool);
    return 0;
}
