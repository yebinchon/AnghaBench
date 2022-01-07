
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const ASN1_OCTET_STRING ;


 int const* ASN1_OCTET_STRING_dup (int const*) ;
 int ASN1_OCTET_STRING_free (int const*) ;
 int CMP_R_NULL_ARGUMENT ;
 int CMPerr (int ,int ) ;

int ossl_cmp_asn1_octet_string_set1(ASN1_OCTET_STRING **tgt,
                                    const ASN1_OCTET_STRING *src)
{
    if (tgt == ((void*)0)) {
        CMPerr(0, CMP_R_NULL_ARGUMENT);
        return 0;
    }
    if (*tgt == src)
        return 1;
    ASN1_OCTET_STRING_free(*tgt);

    if (src != ((void*)0)) {
        if ((*tgt = ASN1_OCTET_STRING_dup(src)) == ((void*)0))
            return 0;
    } else {
        *tgt = ((void*)0);
    }

    return 1;
}
