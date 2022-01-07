
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASYNC_WAIT_CTX ;
typedef int ASYNC_JOB ;


 scalar_t__ ASYNC_FINISH ;
 scalar_t__ ASYNC_PAUSE ;
 int ASYNC_WAIT_CTX_free (int *) ;
 int * ASYNC_WAIT_CTX_new () ;
 int ASYNC_cleanup_thread () ;
 int ASYNC_init_thread (int,int ) ;
 scalar_t__ ASYNC_start_job (int **,int *,int*,int ,int *,int ) ;
 int blockpause ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static int test_ASYNC_block_pause(void)
{
    ASYNC_JOB *job = ((void*)0);
    int funcret;
    ASYNC_WAIT_CTX *waitctx = ((void*)0);

    if ( !ASYNC_init_thread(1, 0)
            || (waitctx = ASYNC_WAIT_CTX_new()) == ((void*)0)
            || ASYNC_start_job(&job, waitctx, &funcret, blockpause, ((void*)0), 0)
                != ASYNC_PAUSE
            || ASYNC_start_job(&job, waitctx, &funcret, blockpause, ((void*)0), 0)
                != ASYNC_FINISH
            || funcret != 1) {
        fprintf(stderr, "test_ASYNC_block_pause() failed\n");
        ASYNC_WAIT_CTX_free(waitctx);
        ASYNC_cleanup_thread();
        return 0;
    }

    ASYNC_WAIT_CTX_free(waitctx);
    ASYNC_cleanup_thread();
    return 1;
}
