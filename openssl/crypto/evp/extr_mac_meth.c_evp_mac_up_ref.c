
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int refcnt; } ;
typedef TYPE_1__ EVP_MAC ;


 int CRYPTO_UP_REF (int *,int*,int ) ;

__attribute__((used)) static int evp_mac_up_ref(void *vmac)
{
    EVP_MAC *mac = vmac;
    int ref = 0;

    CRYPTO_UP_REF(&mac->refcnt, &ref, mac->lock);
    return 1;
}
