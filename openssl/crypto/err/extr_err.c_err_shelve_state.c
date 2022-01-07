
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ERR_STATE ;


 void* CRYPTO_THREAD_get_local (int *) ;
 int CRYPTO_THREAD_set_local (int *,int *) ;
 int OPENSSL_INIT_BASE_ONLY ;
 int OPENSSL_init_crypto (int ,int *) ;
 int RUN_ONCE (int *,int ) ;
 int err_do_init ;
 int err_init ;
 int err_thread_local ;
 int get_last_sys_error () ;
 int set_sys_error (int) ;

int err_shelve_state(void **state)
{
    int saveerrno = get_last_sys_error();
    if (!OPENSSL_init_crypto(OPENSSL_INIT_BASE_ONLY, ((void*)0)))
        return 0;

    if (!RUN_ONCE(&err_init, err_do_init))
        return 0;

    *state = CRYPTO_THREAD_get_local(&err_thread_local);
    if (!CRYPTO_THREAD_set_local(&err_thread_local, (ERR_STATE*)-1))
        return 0;

    set_sys_error(saveerrno);
    return 1;
}
