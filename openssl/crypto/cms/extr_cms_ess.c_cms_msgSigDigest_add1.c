
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CMS_SignerInfo ;


 int CMS_F_CMS_MSGSIGDIGEST_ADD1 ;
 int CMS_R_MSGSIGDIGEST_ERROR ;
 int CMS_signed_add1_attr_by_NID (int *,int ,int ,unsigned char*,unsigned int) ;
 int CMSerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_MAX_MD_SIZE ;
 int NID_id_smime_aa_msgSigDigest ;
 int V_ASN1_OCTET_STRING ;
 int cms_msgSigDigest (int *,unsigned char*,unsigned int*) ;

int cms_msgSigDigest_add1(CMS_SignerInfo *dest, CMS_SignerInfo *src)
{
    unsigned char dig[EVP_MAX_MD_SIZE];
    unsigned int diglen;
    if (!cms_msgSigDigest(src, dig, &diglen)) {
        CMSerr(CMS_F_CMS_MSGSIGDIGEST_ADD1, CMS_R_MSGSIGDIGEST_ERROR);
        return 0;
    }
    if (!CMS_signed_add1_attr_by_NID(dest, NID_id_smime_aa_msgSigDigest,
                                     V_ASN1_OCTET_STRING, dig, diglen)) {
        CMSerr(CMS_F_CMS_MSGSIGDIGEST_ADD1, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    return 1;
}
