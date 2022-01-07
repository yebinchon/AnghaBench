
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_THREAD_lock_free (int *) ;
 int assert (int) ;
 int lh_OSSL_STORE_LOADER_free (int *) ;
 scalar_t__ lh_OSSL_STORE_LOADER_num_items (int *) ;
 int * loader_register ;
 int * registry_lock ;

void ossl_store_destroy_loaders_int(void)
{
    assert(lh_OSSL_STORE_LOADER_num_items(loader_register) == 0);
    lh_OSSL_STORE_LOADER_free(loader_register);
    loader_register = ((void*)0);
    CRYPTO_THREAD_lock_free(registry_lock);
    registry_lock = ((void*)0);
}
