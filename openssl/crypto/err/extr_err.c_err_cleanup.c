
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_THREAD_cleanup_local (int *) ;
 int CRYPTO_THREAD_lock_free (int *) ;
 int * err_string_lock ;
 int err_thread_local ;
 int * int_error_hash ;
 int lh_ERR_STRING_DATA_free (int *) ;
 scalar_t__ set_err_thread_local ;

void err_cleanup(void)
{
    if (set_err_thread_local != 0)
        CRYPTO_THREAD_cleanup_local(&err_thread_local);
    CRYPTO_THREAD_lock_free(err_string_lock);
    err_string_lock = ((void*)0);
    lh_ERR_STRING_DATA_free(int_error_hash);
    int_error_hash = ((void*)0);
}
