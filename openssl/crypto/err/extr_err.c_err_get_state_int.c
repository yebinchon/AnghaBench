
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ERR_STATE ;


 int * CRYPTO_THREAD_get_local (int *) ;
 int CRYPTO_THREAD_set_local (int *,int *) ;
 int ERR_STATE_free (int *) ;
 int OPENSSL_INIT_BASE_ONLY ;
 int OPENSSL_INIT_LOAD_CRYPTO_STRINGS ;
 int OPENSSL_init_crypto (int ,int *) ;
 int * OPENSSL_zalloc (int) ;
 int RUN_ONCE (int *,int ) ;
 int err_delete_thread_state ;
 int err_do_init ;
 int err_init ;
 int err_thread_local ;
 int get_last_sys_error () ;
 int ossl_init_thread_start (int *,int *,int ) ;
 int set_sys_error (int) ;

ERR_STATE *err_get_state_int(void)
{
    ERR_STATE *state;
    int saveerrno = get_last_sys_error();

    if (!OPENSSL_init_crypto(OPENSSL_INIT_BASE_ONLY, ((void*)0)))
        return ((void*)0);

    if (!RUN_ONCE(&err_init, err_do_init))
        return ((void*)0);

    state = CRYPTO_THREAD_get_local(&err_thread_local);
    if (state == (ERR_STATE*)-1)
        return ((void*)0);

    if (state == ((void*)0)) {
        if (!CRYPTO_THREAD_set_local(&err_thread_local, (ERR_STATE*)-1))
            return ((void*)0);

        if ((state = OPENSSL_zalloc(sizeof(*state))) == ((void*)0)) {
            CRYPTO_THREAD_set_local(&err_thread_local, ((void*)0));
            return ((void*)0);
        }

        if (!ossl_init_thread_start(((void*)0), ((void*)0), err_delete_thread_state)
                || !CRYPTO_THREAD_set_local(&err_thread_local, state)) {
            ERR_STATE_free(state);
            CRYPTO_THREAD_set_local(&err_thread_local, ((void*)0));
            return ((void*)0);
        }


        OPENSSL_init_crypto(OPENSSL_INIT_LOAD_CRYPTO_STRINGS, ((void*)0));
    }

    set_sys_error(saveerrno);
    return state;
}
