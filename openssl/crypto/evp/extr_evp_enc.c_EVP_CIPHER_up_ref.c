
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int refcnt; } ;
typedef TYPE_1__ EVP_CIPHER ;


 int CRYPTO_UP_REF (int *,int*,int ) ;

int EVP_CIPHER_up_ref(EVP_CIPHER *cipher)
{
    int ref = 0;

    CRYPTO_UP_REF(&cipher->refcnt, &ref, cipher->lock);
    return 1;
}
