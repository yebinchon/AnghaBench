
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * other; } ;
struct TYPE_5__ {TYPE_1__ infoValue; } ;
typedef TYPE_2__ OSSL_CMP_ITAV ;
typedef int ASN1_TYPE ;



ASN1_TYPE *OSSL_CMP_ITAV_get0_value(const OSSL_CMP_ITAV *itav)
{
    if (itav == ((void*)0))
        return ((void*)0);
    return itav->infoValue.other;
}
