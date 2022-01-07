
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; int prov; int refcnt; } ;
typedef TYPE_1__ EVP_SIGNATURE ;


 int CRYPTO_DOWN_REF (int *,int*,int ) ;
 int CRYPTO_THREAD_lock_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;
 int ossl_provider_free (int ) ;

void EVP_SIGNATURE_free(EVP_SIGNATURE *signature)
{
    if (signature != ((void*)0)) {
        int i;

        CRYPTO_DOWN_REF(&signature->refcnt, &i, signature->lock);
        if (i > 0)
            return;
        ossl_provider_free(signature->prov);
        CRYPTO_THREAD_lock_free(signature->lock);
        OPENSSL_free(signature);
    }
}
