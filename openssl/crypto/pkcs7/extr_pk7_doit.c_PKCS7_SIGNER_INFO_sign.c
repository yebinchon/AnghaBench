
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int enc_digest; scalar_t__ auth_attr; int pkey; TYPE_1__* digest_alg; } ;
struct TYPE_5__ {int algorithm; } ;
typedef TYPE_2__ PKCS7_SIGNER_INFO ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;
typedef int ASN1_VALUE ;


 int ASN1_ITEM_rptr (int ) ;
 int ASN1_STRING_set0 (int ,unsigned char*,size_t) ;
 int ASN1_item_i2d (int *,unsigned char**,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 scalar_t__ EVP_DigestSignFinal (int *,unsigned char*,size_t*) ;
 scalar_t__ EVP_DigestSignInit (int *,int **,int const*,int *,int ) ;
 scalar_t__ EVP_DigestSignUpdate (int *,unsigned char*,int) ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 int EVP_PKEY_CTRL_PKCS7_SIGN ;
 scalar_t__ EVP_PKEY_CTX_ctrl (int *,int,int ,int ,int,TYPE_2__*) ;
 int EVP_PKEY_OP_SIGN ;
 int * EVP_get_digestbyobj (int ) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (size_t) ;
 int PKCS7_ATTR_SIGN ;
 int PKCS7_F_PKCS7_SIGNER_INFO_SIGN ;
 int PKCS7_R_CTRL_ERROR ;
 int PKCS7err (int ,int ) ;

int PKCS7_SIGNER_INFO_sign(PKCS7_SIGNER_INFO *si)
{
    EVP_MD_CTX *mctx;
    EVP_PKEY_CTX *pctx = ((void*)0);
    unsigned char *abuf = ((void*)0);
    int alen;
    size_t siglen;
    const EVP_MD *md = ((void*)0);

    md = EVP_get_digestbyobj(si->digest_alg->algorithm);
    if (md == ((void*)0))
        return 0;

    mctx = EVP_MD_CTX_new();
    if (mctx == ((void*)0)) {
        PKCS7err(PKCS7_F_PKCS7_SIGNER_INFO_SIGN, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    if (EVP_DigestSignInit(mctx, &pctx, md, ((void*)0), si->pkey) <= 0)
        goto err;
    alen = ASN1_item_i2d((ASN1_VALUE *)si->auth_attr, &abuf,
                         ASN1_ITEM_rptr(PKCS7_ATTR_SIGN));
    if (!abuf)
        goto err;
    if (EVP_DigestSignUpdate(mctx, abuf, alen) <= 0)
        goto err;
    OPENSSL_free(abuf);
    abuf = ((void*)0);
    if (EVP_DigestSignFinal(mctx, ((void*)0), &siglen) <= 0)
        goto err;
    abuf = OPENSSL_malloc(siglen);
    if (abuf == ((void*)0))
        goto err;
    if (EVP_DigestSignFinal(mctx, abuf, &siglen) <= 0)
        goto err;
    EVP_MD_CTX_free(mctx);

    ASN1_STRING_set0(si->enc_digest, abuf, siglen);

    return 1;

 err:
    OPENSSL_free(abuf);
    EVP_MD_CTX_free(mctx);
    return 0;

}
