
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_CMP_ITAV ;
typedef int ASN1_TYPE ;
typedef int ASN1_OBJECT ;


 int * OSSL_CMP_ITAV_new () ;
 int OSSL_CMP_ITAV_set0 (int *,int *,int *) ;

OSSL_CMP_ITAV *OSSL_CMP_ITAV_create(ASN1_OBJECT *type, ASN1_TYPE *value)
{
    OSSL_CMP_ITAV *itav;

    if (type == ((void*)0) || (itav = OSSL_CMP_ITAV_new()) == ((void*)0))
        return ((void*)0);
    OSSL_CMP_ITAV_set0(itav, type, value);
    return itav;
}
