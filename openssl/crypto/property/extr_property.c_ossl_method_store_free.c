
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; int global_properties; int algs; } ;
typedef TYPE_1__ OSSL_METHOD_STORE ;


 int CRYPTO_THREAD_lock_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;
 int alg_cleanup ;
 int ossl_property_free (int ) ;
 int ossl_sa_ALGORITHM_doall (int ,int *) ;
 int ossl_sa_ALGORITHM_free (int ) ;

void ossl_method_store_free(OSSL_METHOD_STORE *store)
{
    if (store != ((void*)0)) {
        ossl_sa_ALGORITHM_doall(store->algs, &alg_cleanup);
        ossl_sa_ALGORITHM_free(store->algs);
        ossl_property_free(store->global_properties);
        CRYPTO_THREAD_lock_free(store->lock);
        OPENSSL_free(store);
    }
}
