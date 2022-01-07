
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int signature; scalar_t__ signedAttrs; int * pctx; int pkey; TYPE_1__* digestAlgorithm; int * mctx; } ;
struct TYPE_8__ {int algorithm; } ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;
typedef TYPE_2__ CMS_SignerInfo ;
typedef int ASN1_VALUE ;


 int ASN1_ITEM_rptr (int ) ;
 int ASN1_STRING_set0 (int ,unsigned char*,size_t) ;
 int ASN1_item_i2d (int *,unsigned char**,int ) ;
 int CMS_Attributes_Sign ;
 int CMS_F_CMS_SIGNERINFO_SIGN ;
 int CMS_R_CTRL_ERROR ;
 int CMS_si_check_attributes (TYPE_2__*) ;
 scalar_t__ CMS_signed_get_attr_by_NID (TYPE_2__*,int ,int) ;
 int CMSerr (int ,int ) ;
 scalar_t__ EVP_DigestSignFinal (int *,unsigned char*,size_t*) ;
 scalar_t__ EVP_DigestSignInit (int *,int **,int const*,int *,int ) ;
 scalar_t__ EVP_DigestSignUpdate (int *,unsigned char*,int) ;
 int EVP_MD_CTX_reset (int *) ;
 int EVP_PKEY_CTRL_CMS_SIGN ;
 scalar_t__ EVP_PKEY_CTX_ctrl (int *,int,int ,int ,int,TYPE_2__*) ;
 int EVP_PKEY_OP_SIGN ;
 int * EVP_get_digestbyobj (int ) ;
 int NID_pkcs9_signingTime ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (size_t) ;
 int cms_add1_signingTime (TYPE_2__*,int *) ;

int CMS_SignerInfo_sign(CMS_SignerInfo *si)
{
    EVP_MD_CTX *mctx = si->mctx;
    EVP_PKEY_CTX *pctx = ((void*)0);
    unsigned char *abuf = ((void*)0);
    int alen;
    size_t siglen;
    const EVP_MD *md = ((void*)0);

    md = EVP_get_digestbyobj(si->digestAlgorithm->algorithm);
    if (md == ((void*)0))
        return 0;

    if (CMS_signed_get_attr_by_NID(si, NID_pkcs9_signingTime, -1) < 0) {
        if (!cms_add1_signingTime(si, ((void*)0)))
            goto err;
    }

    if (!CMS_si_check_attributes(si))
        goto err;

    if (si->pctx)
        pctx = si->pctx;
    else {
        EVP_MD_CTX_reset(mctx);
        if (EVP_DigestSignInit(mctx, &pctx, md, ((void*)0), si->pkey) <= 0)
            goto err;
        si->pctx = pctx;
    }
    alen = ASN1_item_i2d((ASN1_VALUE *)si->signedAttrs, &abuf,
                         ASN1_ITEM_rptr(CMS_Attributes_Sign));
    if (!abuf)
        goto err;
    if (EVP_DigestSignUpdate(mctx, abuf, alen) <= 0)
        goto err;
    if (EVP_DigestSignFinal(mctx, ((void*)0), &siglen) <= 0)
        goto err;
    OPENSSL_free(abuf);
    abuf = OPENSSL_malloc(siglen);
    if (abuf == ((void*)0))
        goto err;
    if (EVP_DigestSignFinal(mctx, abuf, &siglen) <= 0)
        goto err;
    EVP_MD_CTX_reset(mctx);

    ASN1_STRING_set0(si->signature, abuf, siglen);

    return 1;

 err:
    OPENSSL_free(abuf);
    EVP_MD_CTX_reset(mctx);
    return 0;
}
