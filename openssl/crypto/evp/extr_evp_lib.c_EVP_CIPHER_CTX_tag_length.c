
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int provctx; int cipher; } ;
typedef int OSSL_PARAM ;
typedef TYPE_1__ EVP_CIPHER_CTX ;


 int OSSL_CIPHER_PARAM_AEAD_TAGLEN ;
 int OSSL_PARAM_END ;
 int OSSL_PARAM_construct_size_t (int ,size_t*) ;
 int evp_do_ciph_ctx_getparams (int ,int ,int *) ;

int EVP_CIPHER_CTX_tag_length(const EVP_CIPHER_CTX *ctx)
{
    int ret;
    size_t v = 0;
    OSSL_PARAM params[2] = { OSSL_PARAM_END, OSSL_PARAM_END };

    params[0] = OSSL_PARAM_construct_size_t(OSSL_CIPHER_PARAM_AEAD_TAGLEN, &v);
    ret = evp_do_ciph_ctx_getparams(ctx->cipher, ctx->provctx, params);
    return ret == 1 ? (int)v : 0;
}
