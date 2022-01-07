
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PKCS7_SIGNER_INFO ;
typedef int ASN1_TIME ;


 int ERR_R_MALLOC_FAILURE ;
 int NID_pkcs9_signingTime ;
 int PKCS7_F_PKCS7_ADD0_ATTRIB_SIGNING_TIME ;
 int PKCS7_add_signed_attribute (int *,int ,int ,int *) ;
 int PKCS7err (int ,int ) ;
 int V_ASN1_UTCTIME ;
 int * X509_gmtime_adj (int *,int ) ;

int PKCS7_add0_attrib_signing_time(PKCS7_SIGNER_INFO *si, ASN1_TIME *t)
{
    if (t == ((void*)0) && (t = X509_gmtime_adj(((void*)0), 0)) == ((void*)0)) {
        PKCS7err(PKCS7_F_PKCS7_ADD0_ATTRIB_SIGNING_TIME,
                 ERR_R_MALLOC_FAILURE);
        return 0;
    }
    return PKCS7_add_signed_attribute(si, NID_pkcs9_signingTime,
                                      V_ASN1_UTCTIME, t);
}
