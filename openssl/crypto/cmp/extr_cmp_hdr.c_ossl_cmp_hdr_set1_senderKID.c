
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int senderKID; } ;
typedef TYPE_1__ OSSL_CMP_PKIHEADER ;
typedef int ASN1_OCTET_STRING ;


 int ossl_assert (int ) ;
 int ossl_cmp_asn1_octet_string_set1 (int *,int const*) ;

int ossl_cmp_hdr_set1_senderKID(OSSL_CMP_PKIHEADER *hdr,
                                const ASN1_OCTET_STRING *senderKID)
{
    if (!ossl_assert(hdr != ((void*)0)))
        return 0;
    return ossl_cmp_asn1_octet_string_set1(&hdr->senderKID, senderKID);
}
