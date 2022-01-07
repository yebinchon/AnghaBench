
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASYNC_WAIT_CTX ;
typedef int ASYNC_JOB ;


 scalar_t__ ASYNC_FINISH ;
 scalar_t__ ASYNC_NO_JOBS ;
 scalar_t__ ASYNC_PAUSE ;
 int ASYNC_WAIT_CTX_free (int *) ;
 int * ASYNC_WAIT_CTX_new () ;
 int ASYNC_cleanup_thread () ;
 int ASYNC_init_thread (int,int ) ;
 scalar_t__ ASYNC_start_job (int **,int *,int*,int ,int *,int ) ;
 int fprintf (int ,char*) ;
 int only_pause ;
 int stderr ;

__attribute__((used)) static int test_ASYNC_init_thread(void)
{
    ASYNC_JOB *job1 = ((void*)0), *job2 = ((void*)0), *job3 = ((void*)0);
    int funcret1, funcret2, funcret3;
    ASYNC_WAIT_CTX *waitctx = ((void*)0);

    if ( !ASYNC_init_thread(2, 0)
            || (waitctx = ASYNC_WAIT_CTX_new()) == ((void*)0)
            || ASYNC_start_job(&job1, waitctx, &funcret1, only_pause, ((void*)0), 0)
                != ASYNC_PAUSE
            || ASYNC_start_job(&job2, waitctx, &funcret2, only_pause, ((void*)0), 0)
                != ASYNC_PAUSE
            || ASYNC_start_job(&job3, waitctx, &funcret3, only_pause, ((void*)0), 0)
                != ASYNC_NO_JOBS
            || ASYNC_start_job(&job1, waitctx, &funcret1, only_pause, ((void*)0), 0)
                != ASYNC_FINISH
            || ASYNC_start_job(&job3, waitctx, &funcret3, only_pause, ((void*)0), 0)
                != ASYNC_PAUSE
            || ASYNC_start_job(&job2, waitctx, &funcret2, only_pause, ((void*)0), 0)
                != ASYNC_FINISH
            || ASYNC_start_job(&job3, waitctx, &funcret3, only_pause, ((void*)0), 0)
                != ASYNC_FINISH
            || funcret1 != 1
            || funcret2 != 1
            || funcret3 != 1) {
        fprintf(stderr, "test_ASYNC_init_thread() failed\n");
        ASYNC_WAIT_CTX_free(waitctx);
        ASYNC_cleanup_thread();
        return 0;
    }

    ASYNC_WAIT_CTX_free(waitctx);
    ASYNC_cleanup_thread();
    return 1;
}
