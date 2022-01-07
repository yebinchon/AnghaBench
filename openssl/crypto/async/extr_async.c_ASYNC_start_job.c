
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* currjob; int dispatcher; } ;
typedef TYPE_1__ async_ctx ;
struct TYPE_9__ {scalar_t__ status; int ret; int (* func ) (void*) ;int fibrectx; int * waitctx; int * funcargs; } ;
typedef int ASYNC_WAIT_CTX ;
typedef TYPE_2__ ASYNC_JOB ;


 int ASYNC_ERR ;
 int ASYNC_FINISH ;
 int ASYNC_F_ASYNC_START_JOB ;
 scalar_t__ ASYNC_JOB_PAUSED ;
 scalar_t__ ASYNC_JOB_PAUSING ;
 scalar_t__ ASYNC_JOB_STOPPING ;
 int ASYNC_NO_JOBS ;
 int ASYNC_PAUSE ;
 int ASYNC_R_FAILED_TO_SWAP_CONTEXT ;
 int ASYNCerr (int ,int ) ;
 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_INIT_ASYNC ;
 int OPENSSL_init_crypto (int ,int *) ;
 int * OPENSSL_malloc (size_t) ;
 TYPE_1__* async_ctx_new () ;
 int async_fibre_swapcontext (int *,int *,int) ;
 TYPE_1__* async_get_ctx () ;
 TYPE_2__* async_get_pool_job () ;
 int async_release_job (TYPE_2__*) ;
 int memcpy (int *,void*,size_t) ;

int ASYNC_start_job(ASYNC_JOB **job, ASYNC_WAIT_CTX *wctx, int *ret,
                    int (*func)(void *), void *args, size_t size)
{
    async_ctx *ctx;

    if (!OPENSSL_init_crypto(OPENSSL_INIT_ASYNC, ((void*)0)))
        return ASYNC_ERR;

    ctx = async_get_ctx();
    if (ctx == ((void*)0))
        ctx = async_ctx_new();
    if (ctx == ((void*)0))
        return ASYNC_ERR;

    if (*job)
        ctx->currjob = *job;

    for (;;) {
        if (ctx->currjob != ((void*)0)) {
            if (ctx->currjob->status == ASYNC_JOB_STOPPING) {
                *ret = ctx->currjob->ret;
                ctx->currjob->waitctx = ((void*)0);
                async_release_job(ctx->currjob);
                ctx->currjob = ((void*)0);
                *job = ((void*)0);
                return ASYNC_FINISH;
            }

            if (ctx->currjob->status == ASYNC_JOB_PAUSING) {
                *job = ctx->currjob;
                ctx->currjob->status = ASYNC_JOB_PAUSED;
                ctx->currjob = ((void*)0);
                return ASYNC_PAUSE;
            }

            if (ctx->currjob->status == ASYNC_JOB_PAUSED) {
                ctx->currjob = *job;

                if (!async_fibre_swapcontext(&ctx->dispatcher,
                        &ctx->currjob->fibrectx, 1)) {
                    ASYNCerr(ASYNC_F_ASYNC_START_JOB,
                             ASYNC_R_FAILED_TO_SWAP_CONTEXT);
                    goto err;
                }
                continue;
            }


            ASYNCerr(ASYNC_F_ASYNC_START_JOB, ERR_R_INTERNAL_ERROR);
            async_release_job(ctx->currjob);
            ctx->currjob = ((void*)0);
            *job = ((void*)0);
            return ASYNC_ERR;
        }


        if ((ctx->currjob = async_get_pool_job()) == ((void*)0))
            return ASYNC_NO_JOBS;

        if (args != ((void*)0)) {
            ctx->currjob->funcargs = OPENSSL_malloc(size);
            if (ctx->currjob->funcargs == ((void*)0)) {
                ASYNCerr(ASYNC_F_ASYNC_START_JOB, ERR_R_MALLOC_FAILURE);
                async_release_job(ctx->currjob);
                ctx->currjob = ((void*)0);
                return ASYNC_ERR;
            }
            memcpy(ctx->currjob->funcargs, args, size);
        } else {
            ctx->currjob->funcargs = ((void*)0);
        }

        ctx->currjob->func = func;
        ctx->currjob->waitctx = wctx;
        if (!async_fibre_swapcontext(&ctx->dispatcher,
                &ctx->currjob->fibrectx, 1)) {
            ASYNCerr(ASYNC_F_ASYNC_START_JOB, ASYNC_R_FAILED_TO_SWAP_CONTEXT);
            goto err;
        }
    }

err:
    async_release_job(ctx->currjob);
    ctx->currjob = ((void*)0);
    *job = ((void*)0);
    return ASYNC_ERR;
}
