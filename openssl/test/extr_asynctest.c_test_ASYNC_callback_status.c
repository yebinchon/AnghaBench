
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* ASYNC_callback_fn ) (void*) ;
typedef int ASYNC_WAIT_CTX ;


 int ASYNC_WAIT_CTX_free (int *) ;
 int ASYNC_WAIT_CTX_get_callback (int *,int (*) (void*),void**) ;
 int ASYNC_WAIT_CTX_get_status (int *) ;
 int * ASYNC_WAIT_CTX_new () ;
 int ASYNC_WAIT_CTX_set_callback (int *,int (*) (void*),void*) ;
 int ASYNC_WAIT_CTX_set_status (int *,int) ;
 int ASYNC_cleanup_thread () ;
 int ASYNC_init_thread (int,int ) ;
 int fprintf (int ,char*) ;
 int stderr ;
 int stub1 (void*) ;
 int test_callback (void*) ;

__attribute__((used)) static int test_ASYNC_callback_status(void)
{
    ASYNC_WAIT_CTX *waitctx = ((void*)0);
    int set_arg = 100;
    ASYNC_callback_fn get_callback;
    void *get_arg;
    int set_status = 1;

    if ( !ASYNC_init_thread(1, 0)
            || (waitctx = ASYNC_WAIT_CTX_new()) == ((void*)0)
            || ASYNC_WAIT_CTX_set_callback(waitctx, test_callback, (void*)&set_arg)
               != 1
            || ASYNC_WAIT_CTX_get_callback(waitctx, &get_callback, &get_arg)
               != 1
            || test_callback != get_callback
            || get_arg != (void*)&set_arg
            || (*get_callback)(get_arg) != 1
            || ASYNC_WAIT_CTX_set_status(waitctx, set_status) != 1
            || set_status != ASYNC_WAIT_CTX_get_status(waitctx)) {
        fprintf(stderr, "test_ASYNC_callback_status() failed\n");
        ASYNC_WAIT_CTX_free(waitctx);
        ASYNC_cleanup_thread();
        return 0;
    }

    ASYNC_WAIT_CTX_free(waitctx);
    ASYNC_cleanup_thread();
    return 1;

}
