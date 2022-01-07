
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* algs; int * lock; int * ctx; } ;
typedef TYPE_1__ OSSL_METHOD_STORE ;
typedef int OPENSSL_CTX ;


 int * CRYPTO_THREAD_lock_new () ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 TYPE_1__* ossl_sa_ALGORITHM_new () ;

OSSL_METHOD_STORE *ossl_method_store_new(OPENSSL_CTX *ctx)
{
    OSSL_METHOD_STORE *res;

    res = OPENSSL_zalloc(sizeof(*res));
    if (res != ((void*)0)) {
        res->ctx = ctx;
        if ((res->algs = ossl_sa_ALGORITHM_new()) == ((void*)0)) {
            OPENSSL_free(res);
            return ((void*)0);
        }
        if ((res->lock = CRYPTO_THREAD_lock_new()) == ((void*)0)) {
            OPENSSL_free(res->algs);
            OPENSSL_free(res);
            return ((void*)0);
        }
    }
    return res;
}
