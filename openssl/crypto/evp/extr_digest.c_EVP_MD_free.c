
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; int prov; int refcnt; } ;
typedef TYPE_1__ EVP_MD ;


 int CRYPTO_DOWN_REF (int *,int*,int ) ;
 int CRYPTO_THREAD_lock_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;
 int ossl_provider_free (int ) ;

void EVP_MD_free(EVP_MD *md)
{
    int i;

    if (md == ((void*)0))
        return;

    CRYPTO_DOWN_REF(&md->refcnt, &i, md->lock);
    if (i > 0)
        return;
    ossl_provider_free(md->prov);
    CRYPTO_THREAD_lock_free(md->lock);
    OPENSSL_free(md);
}
