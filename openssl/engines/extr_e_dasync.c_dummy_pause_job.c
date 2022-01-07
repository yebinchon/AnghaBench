
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_ASYNC_FD ;
typedef int DWORD ;
typedef int (* ASYNC_callback_fn ) (void*) ;
typedef int ASYNC_WAIT_CTX ;
typedef int ASYNC_JOB ;


 scalar_t__ ASYNC_WAIT_CTX_get_callback (int *,int (*) (void*),void**) ;
 scalar_t__ ASYNC_WAIT_CTX_get_fd (int *,int ,int *,void**) ;
 int ASYNC_WAIT_CTX_set_wait_fd (int *,int ,int ,int *,int (*) (int *,int ,int ,int *)) ;
 int * ASYNC_get_current_job () ;
 int * ASYNC_get_wait_ctx (int *) ;
 int ASYNC_pause_job () ;
 scalar_t__ CreatePipe (int *,int *,int *,int) ;
 char DUMMY_CHAR ;
 int OPENSSL_free (int *) ;
 int * OPENSSL_malloc (int) ;
 int ReadFile (int ,char*,int,int *,int *) ;
 int WriteFile (int ,char*,int,int *,int *) ;
 int engine_dasync_id ;
 scalar_t__ pipe (int *) ;
 scalar_t__ read (int ,char*,int) ;
 int stub1 (void*) ;
 int wait_cleanup (int *,int ,int ,int *) ;
 scalar_t__ write (int ,char*,int) ;

__attribute__((used)) static void dummy_pause_job(void) {
    ASYNC_JOB *job;
    ASYNC_WAIT_CTX *waitctx;
    ASYNC_callback_fn callback;
    void * callback_arg;
    OSSL_ASYNC_FD pipefds[2] = {0, 0};
    OSSL_ASYNC_FD *writefd;







    if ((job = ASYNC_get_current_job()) == ((void*)0))
        return;

    waitctx = ASYNC_get_wait_ctx(job);

    if (ASYNC_WAIT_CTX_get_callback(waitctx, &callback, &callback_arg) && callback != ((void*)0)) {





        (*callback)(callback_arg);
        ASYNC_pause_job();
        return;
    }


    if (ASYNC_WAIT_CTX_get_fd(waitctx, engine_dasync_id, &pipefds[0],
                              (void **)&writefd)) {
        pipefds[1] = *writefd;
    } else {
        writefd = OPENSSL_malloc(sizeof(*writefd));
        if (writefd == ((void*)0))
            return;
        *writefd = pipefds[1];

        if (!ASYNC_WAIT_CTX_set_wait_fd(waitctx, engine_dasync_id, pipefds[0],
                                        writefd, wait_cleanup)) {
            wait_cleanup(waitctx, engine_dasync_id, pipefds[0], writefd);
            return;
        }
    }
    ASYNC_pause_job();
}
