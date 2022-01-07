
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * encryptedContentInfo; scalar_t__ version; } ;
struct TYPE_5__ {TYPE_3__* encryptedData; } ;
struct TYPE_6__ {TYPE_1__ d; int contentType; } ;
typedef int EVP_CIPHER ;
typedef int CMS_EncryptedContentInfo ;
typedef TYPE_2__ CMS_ContentInfo ;


 int CMS_EncryptedData ;
 int CMS_F_CMS_ENCRYPTEDDATA_SET1_KEY ;
 int CMS_R_NOT_ENCRYPTED_DATA ;
 int CMS_R_NO_KEY ;
 int CMSerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 TYPE_3__* M_ASN1_new_of (int ) ;
 scalar_t__ NID_pkcs7_encrypted ;
 int OBJ_nid2obj (scalar_t__) ;
 scalar_t__ OBJ_obj2nid (int ) ;
 int cms_EncryptedContent_init (int *,int const*,unsigned char const*,size_t) ;

int CMS_EncryptedData_set1_key(CMS_ContentInfo *cms, const EVP_CIPHER *ciph,
                               const unsigned char *key, size_t keylen)
{
    CMS_EncryptedContentInfo *ec;
    if (!key || !keylen) {
        CMSerr(CMS_F_CMS_ENCRYPTEDDATA_SET1_KEY, CMS_R_NO_KEY);
        return 0;
    }
    if (ciph) {
        cms->d.encryptedData = M_ASN1_new_of(CMS_EncryptedData);
        if (!cms->d.encryptedData) {
            CMSerr(CMS_F_CMS_ENCRYPTEDDATA_SET1_KEY, ERR_R_MALLOC_FAILURE);
            return 0;
        }
        cms->contentType = OBJ_nid2obj(NID_pkcs7_encrypted);
        cms->d.encryptedData->version = 0;
    } else if (OBJ_obj2nid(cms->contentType) != NID_pkcs7_encrypted) {
        CMSerr(CMS_F_CMS_ENCRYPTEDDATA_SET1_KEY, CMS_R_NOT_ENCRYPTED_DATA);
        return 0;
    }
    ec = cms->d.encryptedData->encryptedContentInfo;
    return cms_EncryptedContent_init(ec, ciph, key, keylen);
}
