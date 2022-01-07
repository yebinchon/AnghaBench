
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct provider_store_st {int lock; int providers; } ;
struct TYPE_6__ {char* name; int member_0; } ;
typedef TYPE_1__ OSSL_PROVIDER ;
typedef int OPENSSL_CTX ;


 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;
 int OPENSSL_INIT_LOAD_CONFIG ;
 int OPENSSL_init_crypto (int ,int *) ;
 struct provider_store_st* get_provider_store (int *) ;
 int ossl_provider_up_ref (TYPE_1__*) ;
 int sk_OSSL_PROVIDER_find (int ,TYPE_1__*) ;
 TYPE_1__* sk_OSSL_PROVIDER_value (int ,int) ;

OSSL_PROVIDER *ossl_provider_find(OPENSSL_CTX *libctx, const char *name,
                                  int noconfig)
{
    struct provider_store_st *store = ((void*)0);
    OSSL_PROVIDER *prov = ((void*)0);

    if ((store = get_provider_store(libctx)) != ((void*)0)) {
        OSSL_PROVIDER tmpl = { 0, };
        int i;






        if (!noconfig)
            OPENSSL_init_crypto(OPENSSL_INIT_LOAD_CONFIG, ((void*)0));


        tmpl.name = (char *)name;
        CRYPTO_THREAD_write_lock(store->lock);
        if ((i = sk_OSSL_PROVIDER_find(store->providers, &tmpl)) == -1
            || (prov = sk_OSSL_PROVIDER_value(store->providers, i)) == ((void*)0)
            || !ossl_provider_up_ref(prov))
            prov = ((void*)0);
        CRYPTO_THREAD_unlock(store->lock);
    }

    return prov;
}
