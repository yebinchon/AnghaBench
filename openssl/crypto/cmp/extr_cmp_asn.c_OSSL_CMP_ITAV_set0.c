
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * other; } ;
struct TYPE_5__ {TYPE_1__ infoValue; int * infoType; } ;
typedef TYPE_2__ OSSL_CMP_ITAV ;
typedef int ASN1_TYPE ;
typedef int ASN1_OBJECT ;



void OSSL_CMP_ITAV_set0(OSSL_CMP_ITAV *itav, ASN1_OBJECT *type,
                        ASN1_TYPE *value)
{
    itav->infoType = type;
    itav->infoValue.other = value;
}
