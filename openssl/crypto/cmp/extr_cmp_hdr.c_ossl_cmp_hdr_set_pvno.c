
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pvno; } ;
typedef TYPE_1__ OSSL_CMP_PKIHEADER ;


 int ASN1_INTEGER_set (int ,int) ;
 int ossl_assert (int ) ;

int ossl_cmp_hdr_set_pvno(OSSL_CMP_PKIHEADER *hdr, int pvno)
{
    if (!ossl_assert(hdr != ((void*)0)))
        return 0;
    return ASN1_INTEGER_set(hdr->pvno, pvno);
}
