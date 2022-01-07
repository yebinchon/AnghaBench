
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ OSSL_ASYNC_FD ;
typedef int ASYNC_WAIT_CTX ;
typedef int ASYNC_JOB ;


 scalar_t__ ASYNC_FINISH ;
 scalar_t__ ASYNC_PAUSE ;
 int ASYNC_WAIT_CTX_free (int *) ;
 int ASYNC_WAIT_CTX_get_all_fds (int *,scalar_t__*,size_t*) ;
 int ASYNC_WAIT_CTX_get_changed_fds (int *,scalar_t__*,size_t*,scalar_t__*,size_t*) ;
 int * ASYNC_WAIT_CTX_new () ;
 int ASYNC_cleanup_thread () ;
 int ASYNC_init_thread (int,int ) ;
 scalar_t__ ASYNC_start_job (int **,int *,int*,int ,int *,int ) ;
 scalar_t__ MAGIC_WAIT_FD ;
 scalar_t__ OSSL_BAD_ASYNC_FD ;
 int fprintf (int ,char*) ;
 int stderr ;
 int waitfd ;

__attribute__((used)) static int test_ASYNC_WAIT_CTX_get_all_fds(void)
{
    ASYNC_JOB *job = ((void*)0);
    int funcret;
    ASYNC_WAIT_CTX *waitctx = ((void*)0);
    OSSL_ASYNC_FD fd = OSSL_BAD_ASYNC_FD, delfd = OSSL_BAD_ASYNC_FD;
    size_t numfds, numdelfds;

    if ( !ASYNC_init_thread(1, 0)
            || (waitctx = ASYNC_WAIT_CTX_new()) == ((void*)0)

            || ASYNC_start_job(&job, waitctx, &funcret, waitfd, ((void*)0), 0)
                != ASYNC_PAUSE
            || !ASYNC_WAIT_CTX_get_all_fds(waitctx, ((void*)0), &numfds)
            || numfds != 0
            || !ASYNC_WAIT_CTX_get_changed_fds(waitctx, ((void*)0), &numfds, ((void*)0),
                                               &numdelfds)
            || numfds != 0
            || numdelfds != 0

            || ASYNC_start_job(&job, waitctx, &funcret, waitfd, ((void*)0), 0)
                != ASYNC_PAUSE
            || !ASYNC_WAIT_CTX_get_all_fds(waitctx, ((void*)0), &numfds)
            || numfds != 1
            || !ASYNC_WAIT_CTX_get_all_fds(waitctx, &fd, &numfds)
            || fd != MAGIC_WAIT_FD
            || (fd = OSSL_BAD_ASYNC_FD, 0)
            || !ASYNC_WAIT_CTX_get_changed_fds(waitctx, ((void*)0), &numfds, ((void*)0),
                                               &numdelfds)
            || numfds != 1
            || numdelfds != 0
            || !ASYNC_WAIT_CTX_get_changed_fds(waitctx, &fd, &numfds, ((void*)0),
                                               &numdelfds)
            || fd != MAGIC_WAIT_FD

            || ASYNC_start_job(&job, waitctx, &funcret, waitfd, ((void*)0), 0)
                != ASYNC_PAUSE
            || !ASYNC_WAIT_CTX_get_all_fds(waitctx, ((void*)0), &numfds)
            || numfds != 0
            || !ASYNC_WAIT_CTX_get_changed_fds(waitctx, ((void*)0), &numfds, ((void*)0),
                                               &numdelfds)
            || numfds != 0
            || numdelfds != 1
            || !ASYNC_WAIT_CTX_get_changed_fds(waitctx, ((void*)0), &numfds, &delfd,
                                               &numdelfds)
            || delfd != MAGIC_WAIT_FD

            || ASYNC_start_job(&job, waitctx, &funcret, waitfd, ((void*)0), 0)
                != ASYNC_FINISH
            || !ASYNC_WAIT_CTX_get_all_fds(waitctx, ((void*)0), &numfds)
            || numfds != 0
            || !ASYNC_WAIT_CTX_get_changed_fds(waitctx, ((void*)0), &numfds, ((void*)0),
                                               &numdelfds)
            || numfds != 0
            || numdelfds != 0
            || funcret != 1) {
        fprintf(stderr, "test_ASYNC_get_wait_fd() failed\n");
        ASYNC_WAIT_CTX_free(waitctx);
        ASYNC_cleanup_thread();
        return 0;
    }

    ASYNC_WAIT_CTX_free(waitctx);
    ASYNC_cleanup_thread();
    return 1;
}
