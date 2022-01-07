
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * infoType; } ;
typedef TYPE_1__ OSSL_CMP_ITAV ;
typedef int ASN1_OBJECT ;



ASN1_OBJECT *OSSL_CMP_ITAV_get0_type(const OSSL_CMP_ITAV *itav)
{
    if (itav == ((void*)0))
        return ((void*)0);
    return itav->infoType;
}
