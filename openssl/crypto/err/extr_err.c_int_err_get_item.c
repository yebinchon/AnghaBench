
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ERR_STRING_DATA ;


 int CRYPTO_THREAD_read_lock (int ) ;
 int CRYPTO_THREAD_unlock (int ) ;
 int err_string_lock ;
 int int_error_hash ;
 int * lh_ERR_STRING_DATA_retrieve (int ,int const*) ;

__attribute__((used)) static ERR_STRING_DATA *int_err_get_item(const ERR_STRING_DATA *d)
{
    ERR_STRING_DATA *p = ((void*)0);

    CRYPTO_THREAD_read_lock(err_string_lock);
    p = lh_ERR_STRING_DATA_retrieve(int_error_hash, d);
    CRYPTO_THREAD_unlock(err_string_lock);

    return p;
}
