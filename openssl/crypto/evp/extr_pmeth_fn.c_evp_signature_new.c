
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int refcnt; int * prov; int * lock; } ;
typedef int OSSL_PROVIDER ;
typedef TYPE_1__ EVP_SIGNATURE ;


 int * CRYPTO_THREAD_lock_new () ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int ossl_provider_up_ref (int *) ;

__attribute__((used)) static EVP_SIGNATURE *evp_signature_new(OSSL_PROVIDER *prov)
{
    EVP_SIGNATURE *signature = OPENSSL_zalloc(sizeof(EVP_SIGNATURE));

    signature->lock = CRYPTO_THREAD_lock_new();
    if (signature->lock == ((void*)0)) {
        OPENSSL_free(signature);
        return ((void*)0);
    }
    signature->prov = prov;
    ossl_provider_up_ref(prov);
    signature->refcnt = 1;

    return signature;
}
