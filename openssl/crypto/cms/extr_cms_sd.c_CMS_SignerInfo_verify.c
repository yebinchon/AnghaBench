
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* signature; scalar_t__ signedAttrs; int pkey; int pctx; int * mctx; TYPE_1__* digestAlgorithm; } ;
struct TYPE_8__ {int length; int data; } ;
struct TYPE_7__ {int algorithm; } ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;
typedef TYPE_3__ CMS_SignerInfo ;
typedef int ASN1_VALUE ;


 int ASN1_ITEM_rptr (int ) ;
 int ASN1_item_i2d (int *,unsigned char**,int ) ;
 int CMS_Attributes_Verify ;
 int CMS_F_CMS_SIGNERINFO_VERIFY ;
 int CMS_R_NO_PUBLIC_KEY ;
 int CMS_R_VERIFICATION_FAILURE ;
 int CMS_si_check_attributes (TYPE_3__*) ;
 int CMSerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_DigestVerifyFinal (int *,int ,int ) ;
 scalar_t__ EVP_DigestVerifyInit (int *,int *,int const*,int *,int ) ;
 int EVP_DigestVerifyUpdate (int *,unsigned char*,int) ;
 int * EVP_MD_CTX_new () ;
 int EVP_MD_CTX_reset (int *) ;
 int * EVP_get_digestbyobj (int ) ;
 int OPENSSL_free (unsigned char*) ;
 int cms_sd_asn1_ctrl (TYPE_3__*,int) ;

int CMS_SignerInfo_verify(CMS_SignerInfo *si)
{
    EVP_MD_CTX *mctx = ((void*)0);
    unsigned char *abuf = ((void*)0);
    int alen, r = -1;
    const EVP_MD *md = ((void*)0);

    if (!si->pkey) {
        CMSerr(CMS_F_CMS_SIGNERINFO_VERIFY, CMS_R_NO_PUBLIC_KEY);
        return -1;
    }

    if (!CMS_si_check_attributes(si))
        return -1;

    md = EVP_get_digestbyobj(si->digestAlgorithm->algorithm);
    if (md == ((void*)0))
        return -1;
    if (si->mctx == ((void*)0) && (si->mctx = EVP_MD_CTX_new()) == ((void*)0)) {
        CMSerr(CMS_F_CMS_SIGNERINFO_VERIFY, ERR_R_MALLOC_FAILURE);
        return -1;
    }
    mctx = si->mctx;
    if (EVP_DigestVerifyInit(mctx, &si->pctx, md, ((void*)0), si->pkey) <= 0)
        goto err;

    if (!cms_sd_asn1_ctrl(si, 1))
        goto err;

    alen = ASN1_item_i2d((ASN1_VALUE *)si->signedAttrs, &abuf,
                         ASN1_ITEM_rptr(CMS_Attributes_Verify));
    if (!abuf)
        goto err;
    r = EVP_DigestVerifyUpdate(mctx, abuf, alen);
    OPENSSL_free(abuf);
    if (r <= 0) {
        r = -1;
        goto err;
    }
    r = EVP_DigestVerifyFinal(mctx,
                              si->signature->data, si->signature->length);
    if (r <= 0)
        CMSerr(CMS_F_CMS_SIGNERINFO_VERIFY, CMS_R_VERIFICATION_FAILURE);
 err:
    EVP_MD_CTX_reset(mctx);
    return r;
}
