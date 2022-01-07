
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASYNC_WAIT_CTX ;
typedef int ASYNC_JOB ;


 int ASYNC_WAIT_CTX_clear_fd (int *,int *) ;
 int ASYNC_WAIT_CTX_set_wait_fd (int *,int *,int ,int *,int *) ;
 int * ASYNC_get_current_job () ;
 int * ASYNC_get_wait_ctx (int *) ;
 int ASYNC_pause_job () ;
 int MAGIC_WAIT_FD ;

__attribute__((used)) static int waitfd(void *args)
{
    ASYNC_JOB *job;
    ASYNC_WAIT_CTX *waitctx;
    job = ASYNC_get_current_job();
    if (job == ((void*)0))
        return 0;
    waitctx = ASYNC_get_wait_ctx(job);
    if (waitctx == ((void*)0))
        return 0;


    ASYNC_pause_job();


    if (!ASYNC_WAIT_CTX_set_wait_fd(waitctx, waitctx, MAGIC_WAIT_FD, ((void*)0), ((void*)0)))
        return 0;
    ASYNC_pause_job();


    if (!ASYNC_WAIT_CTX_clear_fd(waitctx, waitctx))
        return 0;
    ASYNC_pause_job();


    if (!ASYNC_WAIT_CTX_set_wait_fd(waitctx, waitctx, MAGIC_WAIT_FD, ((void*)0), ((void*)0)))
        return 0;
    if (!ASYNC_WAIT_CTX_clear_fd(waitctx, waitctx))
        return 0;

    return 1;
}
