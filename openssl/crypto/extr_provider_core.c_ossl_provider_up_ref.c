
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int refcnt_lock; int refcnt; } ;
typedef TYPE_1__ OSSL_PROVIDER ;


 scalar_t__ CRYPTO_UP_REF (int *,int*,int ) ;

int ossl_provider_up_ref(OSSL_PROVIDER *prov)
{
    int ref = 0;

    if (CRYPTO_UP_REF(&prov->refcnt, &ref, prov->refcnt_lock) <= 0)
        return 0;
    return ref;
}
