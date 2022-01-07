
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * statusString; } ;
typedef TYPE_1__ OSSL_CMP_PKISI ;
typedef int OSSL_CMP_PKIFREETEXT ;


 int ossl_assert (int ) ;

OSSL_CMP_PKIFREETEXT *ossl_cmp_pkisi_get0_statusstring(const OSSL_CMP_PKISI *si)
{
    if (!ossl_assert(si != ((void*)0)))
        return ((void*)0);
    return si->statusString;
}
