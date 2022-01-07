
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PKCS7_SIGNER_INFO ;
typedef int EVP_MD_CTX ;


 int ERR_R_EVP_LIB ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_DigestFinal_ex (int *,unsigned char*,unsigned int*) ;
 int EVP_MAX_MD_SIZE ;
 int NID_pkcs9_signingTime ;
 int PKCS7_F_DO_PKCS7_SIGNED_ATTRIB ;
 int PKCS7_SIGNER_INFO_sign (int *) ;
 int PKCS7_add0_attrib_signing_time (int *,int *) ;
 int PKCS7_add1_attrib_digest (int *,unsigned char*,unsigned int) ;
 int PKCS7_get_signed_attribute (int *,int ) ;
 int PKCS7err (int ,int ) ;

__attribute__((used)) static int do_pkcs7_signed_attrib(PKCS7_SIGNER_INFO *si, EVP_MD_CTX *mctx)
{
    unsigned char md_data[EVP_MAX_MD_SIZE];
    unsigned int md_len;


    if (!PKCS7_get_signed_attribute(si, NID_pkcs9_signingTime)) {
        if (!PKCS7_add0_attrib_signing_time(si, ((void*)0))) {
            PKCS7err(PKCS7_F_DO_PKCS7_SIGNED_ATTRIB, ERR_R_MALLOC_FAILURE);
            return 0;
        }
    }


    if (!EVP_DigestFinal_ex(mctx, md_data, &md_len)) {
        PKCS7err(PKCS7_F_DO_PKCS7_SIGNED_ATTRIB, ERR_R_EVP_LIB);
        return 0;
    }
    if (!PKCS7_add1_attrib_digest(si, md_data, md_len)) {
        PKCS7err(PKCS7_F_DO_PKCS7_SIGNED_ATTRIB, ERR_R_MALLOC_FAILURE);
        return 0;
    }


    if (!PKCS7_SIGNER_INFO_sign(si))
        return 0;

    return 1;
}
