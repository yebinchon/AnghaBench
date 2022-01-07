
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASN1_OCTET_STRING ;


 int ASN1_OCTET_STRING_free (int *) ;
 int * ASN1_OCTET_STRING_new () ;
 int ASN1_OCTET_STRING_set (int *,unsigned char const*,int) ;
 int CMP_R_NULL_ARGUMENT ;
 int CMPerr (int ,int ) ;

int ossl_cmp_asn1_octet_string_set1_bytes(ASN1_OCTET_STRING **tgt,
                                          const unsigned char *bytes, int len)
{
    ASN1_OCTET_STRING *new = ((void*)0);

    if (tgt == ((void*)0)) {
        CMPerr(0, CMP_R_NULL_ARGUMENT);
        return 0;
    }
    if (bytes != ((void*)0)) {
        if ((new = ASN1_OCTET_STRING_new()) == ((void*)0)
                || !(ASN1_OCTET_STRING_set(new, bytes, len))) {
            ASN1_OCTET_STRING_free(new);
            return 0;
        }
    }

    ASN1_OCTET_STRING_free(*tgt);
    *tgt = new;
    return 1;
}
