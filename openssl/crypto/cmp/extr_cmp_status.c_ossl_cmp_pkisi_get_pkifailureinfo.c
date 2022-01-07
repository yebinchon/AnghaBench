
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * failInfo; } ;
typedef TYPE_1__ OSSL_CMP_PKISI ;


 scalar_t__ ASN1_BIT_STRING_get_bit (int *,int) ;
 int OSSL_CMP_PKIFAILUREINFO_MAX ;
 int ossl_assert (int) ;

int ossl_cmp_pkisi_get_pkifailureinfo(const OSSL_CMP_PKISI *si)
{
    int i;
    int res = 0;

    if (!ossl_assert(si != ((void*)0) && si->failInfo != ((void*)0)))
        return -1;
    for (i = 0; i <= OSSL_CMP_PKIFAILUREINFO_MAX; i++)
        if (ASN1_BIT_STRING_get_bit(si->failInfo, i))
            res |= 1 << i;
    return res;
}
