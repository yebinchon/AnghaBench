
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct provider_store_st {int lock; int providers; } ;


 int CRYPTO_THREAD_lock_free (int ) ;
 int OPENSSL_free (struct provider_store_st*) ;
 int ossl_provider_free ;
 int sk_OSSL_PROVIDER_pop_free (int ,int ) ;

__attribute__((used)) static void provider_store_free(void *vstore)
{
    struct provider_store_st *store = vstore;

    if (store == ((void*)0))
        return;
    sk_OSSL_PROVIDER_pop_free(store->providers, ossl_provider_free);
    CRYPTO_THREAD_lock_free(store->lock);
    OPENSSL_free(store);
}
