
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER ;
typedef int CMS_ContentInfo ;
typedef int BIO ;


 int CMS_ContentInfo_free (int *) ;
 int * CMS_ContentInfo_new () ;
 unsigned int CMS_DETACHED ;
 int CMS_EncryptedData_set1_key (int *,int const*,unsigned char const*,size_t) ;
 int CMS_F_CMS_ENCRYPTEDDATA_ENCRYPT ;
 unsigned int CMS_PARTIAL ;
 int CMS_R_NO_CIPHER ;
 unsigned int CMS_STREAM ;
 scalar_t__ CMS_final (int *,int *,int *,unsigned int) ;
 int CMS_set_detached (int *,int ) ;
 int CMSerr (int ,int ) ;

CMS_ContentInfo *CMS_EncryptedData_encrypt(BIO *in, const EVP_CIPHER *cipher,
                                           const unsigned char *key,
                                           size_t keylen, unsigned int flags)
{
    CMS_ContentInfo *cms;
    if (!cipher) {
        CMSerr(CMS_F_CMS_ENCRYPTEDDATA_ENCRYPT, CMS_R_NO_CIPHER);
        return ((void*)0);
    }
    cms = CMS_ContentInfo_new();
    if (cms == ((void*)0))
        return ((void*)0);
    if (!CMS_EncryptedData_set1_key(cms, cipher, key, keylen))
        return ((void*)0);

    if (!(flags & CMS_DETACHED))
        CMS_set_detached(cms, 0);

    if ((flags & (CMS_STREAM | CMS_PARTIAL))
        || CMS_final(cms, in, ((void*)0), flags))
        return cms;

    CMS_ContentInfo_free(cms);
    return ((void*)0);
}
