
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dispatcher; TYPE_2__* currjob; scalar_t__ blocked; } ;
typedef TYPE_1__ async_ctx ;
struct TYPE_5__ {int waitctx; int fibrectx; int status; } ;
typedef TYPE_2__ ASYNC_JOB ;


 int ASYNC_F_ASYNC_PAUSE_JOB ;
 int ASYNC_JOB_PAUSING ;
 int ASYNC_R_FAILED_TO_SWAP_CONTEXT ;
 int ASYNCerr (int ,int ) ;
 int async_fibre_swapcontext (int *,int *,int) ;
 TYPE_1__* async_get_ctx () ;
 int async_wait_ctx_reset_counts (int ) ;

int ASYNC_pause_job(void)
{
    ASYNC_JOB *job;
    async_ctx *ctx = async_get_ctx();

    if (ctx == ((void*)0)
            || ctx->currjob == ((void*)0)
            || ctx->blocked) {




        return 1;
    }

    job = ctx->currjob;
    job->status = ASYNC_JOB_PAUSING;

    if (!async_fibre_swapcontext(&job->fibrectx,
                                 &ctx->dispatcher, 1)) {
        ASYNCerr(ASYNC_F_ASYNC_PAUSE_JOB, ASYNC_R_FAILED_TO_SWAP_CONTEXT);
        return 0;
    }

    async_wait_ctx_reset_counts(job->waitctx);

    return 1;
}
