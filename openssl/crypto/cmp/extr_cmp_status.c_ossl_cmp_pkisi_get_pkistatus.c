
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * status; } ;
typedef TYPE_1__ OSSL_CMP_PKISI ;


 int ossl_assert (int) ;
 int ossl_cmp_asn1_get_int (int *) ;

int ossl_cmp_pkisi_get_pkistatus(const OSSL_CMP_PKISI *si)
{
    if (!ossl_assert(si != ((void*)0) && si->status != ((void*)0)))
        return -1;
    return ossl_cmp_asn1_get_int(si->status);
}
