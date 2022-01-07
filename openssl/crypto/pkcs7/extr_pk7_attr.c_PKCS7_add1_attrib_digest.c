
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PKCS7_SIGNER_INFO ;
typedef int ASN1_OCTET_STRING ;


 int ASN1_OCTET_STRING_free (int *) ;
 int * ASN1_OCTET_STRING_new () ;
 int ASN1_STRING_set (int *,unsigned char const*,int) ;
 int NID_pkcs9_messageDigest ;
 int PKCS7_add_signed_attribute (int *,int ,int ,int *) ;
 int V_ASN1_OCTET_STRING ;

int PKCS7_add1_attrib_digest(PKCS7_SIGNER_INFO *si,
                             const unsigned char *md, int mdlen)
{
    ASN1_OCTET_STRING *os;
    os = ASN1_OCTET_STRING_new();
    if (os == ((void*)0))
        return 0;
    if (!ASN1_STRING_set(os, md, mdlen)
        || !PKCS7_add_signed_attribute(si, NID_pkcs9_messageDigest,
                                       V_ASN1_OCTET_STRING, os)) {
        ASN1_OCTET_STRING_free(os);
        return 0;
    }
    return 1;
}
