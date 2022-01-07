
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY_CTX ;
typedef int EVP_PKEY ;
typedef int EVP_MD_CTX ;


 int ERR_R_MALLOC_FAILURE ;
 int EVP_DigestFinal_ex (int *,unsigned char*,unsigned int*) ;
 int EVP_F_EVP_SIGNFINAL ;
 int EVP_MAX_MD_SIZE ;
 int EVP_MD_CTX_FLAG_FINALISE ;
 int EVP_MD_CTX_copy_ex (int *,int *) ;
 int EVP_MD_CTX_free (int *) ;
 int EVP_MD_CTX_md (int *) ;
 int * EVP_MD_CTX_new () ;
 scalar_t__ EVP_MD_CTX_test_flags (int *,int ) ;
 int EVP_PKEY_CTX_free (int *) ;
 int * EVP_PKEY_CTX_new (int *,int *) ;
 scalar_t__ EVP_PKEY_CTX_set_signature_md (int *,int ) ;
 scalar_t__ EVP_PKEY_sign (int *,unsigned char*,size_t*,unsigned char*,unsigned int) ;
 scalar_t__ EVP_PKEY_sign_init (int *) ;
 scalar_t__ EVP_PKEY_size (int *) ;
 int EVPerr (int ,int ) ;

int EVP_SignFinal(EVP_MD_CTX *ctx, unsigned char *sigret,
                  unsigned int *siglen, EVP_PKEY *pkey)
{
    unsigned char m[EVP_MAX_MD_SIZE];
    unsigned int m_len = 0;
    int i = 0;
    size_t sltmp;
    EVP_PKEY_CTX *pkctx = ((void*)0);

    *siglen = 0;
    if (EVP_MD_CTX_test_flags(ctx, EVP_MD_CTX_FLAG_FINALISE)) {
        if (!EVP_DigestFinal_ex(ctx, m, &m_len))
            goto err;
    } else {
        int rv = 0;
        EVP_MD_CTX *tmp_ctx = EVP_MD_CTX_new();
        if (tmp_ctx == ((void*)0)) {
            EVPerr(EVP_F_EVP_SIGNFINAL, ERR_R_MALLOC_FAILURE);
            return 0;
        }
        rv = EVP_MD_CTX_copy_ex(tmp_ctx, ctx);
        if (rv)
            rv = EVP_DigestFinal_ex(tmp_ctx, m, &m_len);
        EVP_MD_CTX_free(tmp_ctx);
        if (!rv)
            return 0;
    }

    sltmp = (size_t)EVP_PKEY_size(pkey);
    i = 0;
    pkctx = EVP_PKEY_CTX_new(pkey, ((void*)0));
    if (pkctx == ((void*)0))
        goto err;
    if (EVP_PKEY_sign_init(pkctx) <= 0)
        goto err;
    if (EVP_PKEY_CTX_set_signature_md(pkctx, EVP_MD_CTX_md(ctx)) <= 0)
        goto err;
    if (EVP_PKEY_sign(pkctx, sigret, &sltmp, m, m_len) <= 0)
        goto err;
    *siglen = sltmp;
    i = 1;
 err:
    EVP_PKEY_CTX_free(pkctx);
    return i;
}
