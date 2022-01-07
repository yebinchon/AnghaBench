
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int signature; int pkey; int * pctx; int digestAlgorithm; } ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_MD_CTX ;
typedef TYPE_1__ CMS_SignerInfo ;
typedef int CMS_ContentInfo ;
typedef int BIO ;


 int ASN1_STRING_set0 (int ,unsigned char*,unsigned int) ;
 int CMS_F_CMS_SIGNERINFO_CONTENT_SIGN ;
 int CMS_R_NO_PRIVATE_KEY ;
 int CMS_R_SIGNFINAL_ERROR ;
 int CMS_SignerInfo_sign (TYPE_1__*) ;
 int CMS_signed_add1_attr_by_NID (TYPE_1__*,int ,int ,unsigned char*,unsigned int) ;
 scalar_t__ CMS_signed_get_attr_count (TYPE_1__*) ;
 int CMSerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_DigestFinal_ex (int *,unsigned char*,unsigned int*) ;
 int EVP_MAX_MD_SIZE ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 int EVP_PKEY_CTX_free (int *) ;
 scalar_t__ EVP_PKEY_sign (int *,unsigned char*,size_t*,unsigned char*,unsigned int) ;
 size_t EVP_PKEY_size (int ) ;
 int EVP_SignFinal (int *,unsigned char*,unsigned int*,int ) ;
 int NID_pkcs9_messageDigest ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (size_t) ;
 int V_ASN1_OCTET_STRING ;
 int cms_DigestAlgorithm_find_ctx (int *,int *,int ) ;
 int cms_sd_asn1_ctrl (TYPE_1__*,int ) ;
 int cms_set_si_contentType_attr (int *,TYPE_1__*) ;

__attribute__((used)) static int cms_SignerInfo_content_sign(CMS_ContentInfo *cms,
                                       CMS_SignerInfo *si, BIO *chain)
{
    EVP_MD_CTX *mctx = EVP_MD_CTX_new();
    int r = 0;
    EVP_PKEY_CTX *pctx = ((void*)0);

    if (mctx == ((void*)0)) {
        CMSerr(CMS_F_CMS_SIGNERINFO_CONTENT_SIGN, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    if (!si->pkey) {
        CMSerr(CMS_F_CMS_SIGNERINFO_CONTENT_SIGN, CMS_R_NO_PRIVATE_KEY);
        goto err;
    }

    if (!cms_DigestAlgorithm_find_ctx(mctx, chain, si->digestAlgorithm))
        goto err;

    if (si->pctx && !cms_sd_asn1_ctrl(si, 0))
        goto err;





    if (CMS_signed_get_attr_count(si) >= 0) {
        unsigned char md[EVP_MAX_MD_SIZE];
        unsigned int mdlen;
        if (!EVP_DigestFinal_ex(mctx, md, &mdlen))
            goto err;
        if (!CMS_signed_add1_attr_by_NID(si, NID_pkcs9_messageDigest,
                                         V_ASN1_OCTET_STRING, md, mdlen))
            goto err;

        if (!cms_set_si_contentType_attr(cms, si))
            goto err;

        if (!CMS_SignerInfo_sign(si))
            goto err;
    } else if (si->pctx) {
        unsigned char *sig;
        size_t siglen;
        unsigned char md[EVP_MAX_MD_SIZE];
        unsigned int mdlen;
        pctx = si->pctx;
        if (!EVP_DigestFinal_ex(mctx, md, &mdlen))
            goto err;
        siglen = EVP_PKEY_size(si->pkey);
        sig = OPENSSL_malloc(siglen);
        if (sig == ((void*)0)) {
            CMSerr(CMS_F_CMS_SIGNERINFO_CONTENT_SIGN, ERR_R_MALLOC_FAILURE);
            goto err;
        }
        if (EVP_PKEY_sign(pctx, sig, &siglen, md, mdlen) <= 0) {
            OPENSSL_free(sig);
            goto err;
        }
        ASN1_STRING_set0(si->signature, sig, siglen);
    } else {
        unsigned char *sig;
        unsigned int siglen;
        sig = OPENSSL_malloc(EVP_PKEY_size(si->pkey));
        if (sig == ((void*)0)) {
            CMSerr(CMS_F_CMS_SIGNERINFO_CONTENT_SIGN, ERR_R_MALLOC_FAILURE);
            goto err;
        }
        if (!EVP_SignFinal(mctx, sig, &siglen, si->pkey)) {
            CMSerr(CMS_F_CMS_SIGNERINFO_CONTENT_SIGN, CMS_R_SIGNFINAL_ERROR);
            OPENSSL_free(sig);
            goto err;
        }
        ASN1_STRING_set0(si->signature, sig, siglen);
    }

    r = 1;

 err:
    EVP_MD_CTX_free(mctx);
    EVP_PKEY_CTX_free(pctx);
    return r;

}
