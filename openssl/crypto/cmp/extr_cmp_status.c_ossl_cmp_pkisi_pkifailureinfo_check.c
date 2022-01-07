
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * failInfo; } ;
typedef TYPE_1__ OSSL_CMP_PKISI ;


 int ASN1_BIT_STRING_get_bit (int *,int) ;
 int CMP_R_INVALID_ARGS ;
 int CMPerr (int ,int ) ;
 int OSSL_CMP_PKIFAILUREINFO_MAX ;
 int ossl_assert (int) ;

int ossl_cmp_pkisi_pkifailureinfo_check(const OSSL_CMP_PKISI *si, int bit_index)
{
    if (!ossl_assert(si != ((void*)0) && si->failInfo != ((void*)0)))
        return -1;
    if (bit_index < 0 || bit_index > OSSL_CMP_PKIFAILUREINFO_MAX) {
        CMPerr(0, CMP_R_INVALID_ARGS);
        return -1;
    }

    return ASN1_BIT_STRING_get_bit(si->failInfo, bit_index);
}
