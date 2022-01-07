
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ERR_STATE ;


 int * CRYPTO_THREAD_get_local (int *) ;
 int CRYPTO_THREAD_set_local (int *,int *) ;
 int ERR_STATE_free (int *) ;
 int err_thread_local ;

__attribute__((used)) static void err_delete_thread_state(void *arg)
{
    ERR_STATE *state = CRYPTO_THREAD_get_local(&err_thread_local);
    if (state == ((void*)0))
        return;

    CRYPTO_THREAD_set_local(&err_thread_local, ((void*)0));
    ERR_STATE_free(state);
}
