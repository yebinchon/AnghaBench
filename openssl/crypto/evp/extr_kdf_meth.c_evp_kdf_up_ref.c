
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int refcnt; } ;
typedef TYPE_1__ EVP_KDF ;


 int CRYPTO_UP_REF (int *,int*,int ) ;

__attribute__((used)) static int evp_kdf_up_ref(void *vkdf)
{
    EVP_KDF *kdf = (EVP_KDF *)vkdf;
    int ref = 0;

    CRYPTO_UP_REF(&kdf->refcnt, &ref, kdf->lock);
    return 1;
}
