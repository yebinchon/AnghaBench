
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct provider_store_st {int lock; int providers; } ;
struct TYPE_8__ {int error_lib; struct provider_store_st* store; int * libctx; } ;
typedef int OSSL_provider_init_fn ;
typedef TYPE_1__ OSSL_PROVIDER ;
typedef int OPENSSL_CTX ;


 int CRYPTO_F_OSSL_PROVIDER_NEW ;
 int CRYPTO_R_PROVIDER_ALREADY_EXISTS ;
 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;
 int CRYPTOerr (int ,int ) ;
 int ERR_LIB_CRYPTO ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_get_next_error_library () ;
 int ERR_raise_data (int ,int ,int *,char*,char const*) ;
 struct provider_store_st* get_provider_store (int *) ;
 TYPE_1__* ossl_provider_find (int *,char const*,int) ;
 int ossl_provider_free (TYPE_1__*) ;
 int ossl_provider_up_ref (TYPE_1__*) ;
 TYPE_1__* provider_new (char const*,int *) ;
 scalar_t__ sk_OSSL_PROVIDER_push (int ,TYPE_1__*) ;

OSSL_PROVIDER *ossl_provider_new(OPENSSL_CTX *libctx, const char *name,
                                 OSSL_provider_init_fn *init_function,
                                 int noconfig)
{
    struct provider_store_st *store = ((void*)0);
    OSSL_PROVIDER *prov = ((void*)0);

    if ((store = get_provider_store(libctx)) == ((void*)0))
        return ((void*)0);

    if ((prov = ossl_provider_find(libctx, name,
                                   noconfig)) != ((void*)0)) {
        ossl_provider_free(prov);
        ERR_raise_data(ERR_LIB_CRYPTO, CRYPTO_R_PROVIDER_ALREADY_EXISTS, ((void*)0),
                       "name=%s", name);
        return ((void*)0);
    }


    if ((prov = provider_new(name, init_function)) == ((void*)0))
        return ((void*)0);

    CRYPTO_THREAD_write_lock(store->lock);
    if (!ossl_provider_up_ref(prov)) {
        ossl_provider_free(prov);
        prov = ((void*)0);
    } else if (sk_OSSL_PROVIDER_push(store->providers, prov) == 0) {
        ossl_provider_free(prov);
        ossl_provider_free(prov);
        prov = ((void*)0);
    } else {
        prov->libctx = libctx;
        prov->store = store;

        prov->error_lib = ERR_get_next_error_library();

    }
    CRYPTO_THREAD_unlock(store->lock);

    if (prov == ((void*)0))
        CRYPTOerr(CRYPTO_F_OSSL_PROVIDER_NEW, ERR_R_MALLOC_FAILURE);






    return prov;
}
