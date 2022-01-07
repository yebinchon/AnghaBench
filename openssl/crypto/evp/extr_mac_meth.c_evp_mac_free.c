
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int prov; int refcnt; } ;
typedef TYPE_1__ EVP_MAC ;


 int CRYPTO_DOWN_REF (int *,int*,int ) ;
 int CRYPTO_THREAD_lock_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;
 int ossl_provider_free (int ) ;

__attribute__((used)) static void evp_mac_free(void *vmac)
{
    EVP_MAC *mac = vmac;
    int ref = 0;

    if (mac == ((void*)0))
        return;

    CRYPTO_DOWN_REF(&mac->refcnt, &ref, mac->lock);
    if (ref > 0)
        return;
    ossl_provider_free(mac->prov);
    CRYPTO_THREAD_lock_free(mac->lock);
    OPENSSL_free(mac);
}
