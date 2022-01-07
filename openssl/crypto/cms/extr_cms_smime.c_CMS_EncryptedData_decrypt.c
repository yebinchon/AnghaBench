
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CMS_ContentInfo ;
typedef int BIO ;


 scalar_t__ CMS_EncryptedData_set1_key (int *,int *,unsigned char const*,size_t) ;
 int CMS_F_CMS_ENCRYPTEDDATA_DECRYPT ;
 int CMS_R_TYPE_NOT_ENCRYPTED_DATA ;
 int * CMS_dataInit (int *,int *) ;
 int CMS_get0_type (int *) ;
 int CMSerr (int ,int ) ;
 scalar_t__ NID_pkcs7_encrypted ;
 scalar_t__ OBJ_obj2nid (int ) ;
 int check_content (int *) ;
 int cms_copy_content (int *,int *,unsigned int) ;
 int do_free_upto (int *,int *) ;

int CMS_EncryptedData_decrypt(CMS_ContentInfo *cms,
                              const unsigned char *key, size_t keylen,
                              BIO *dcont, BIO *out, unsigned int flags)
{
    BIO *cont;
    int r;
    if (OBJ_obj2nid(CMS_get0_type(cms)) != NID_pkcs7_encrypted) {
        CMSerr(CMS_F_CMS_ENCRYPTEDDATA_DECRYPT,
               CMS_R_TYPE_NOT_ENCRYPTED_DATA);
        return 0;
    }

    if (!dcont && !check_content(cms))
        return 0;

    if (CMS_EncryptedData_set1_key(cms, ((void*)0), key, keylen) <= 0)
        return 0;
    cont = CMS_dataInit(cms, dcont);
    if (!cont)
        return 0;
    r = cms_copy_content(out, cont, flags);
    do_free_upto(cont, dcont);
    return r;
}
