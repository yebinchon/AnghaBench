
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* digest; int md_data; int provctx; } ;
struct TYPE_10__ {int (* dfinal ) (int ,unsigned char*,size_t*,size_t) ;int flags; int (* final ) (TYPE_2__*,unsigned char*) ;int ctx_size; int (* cleanup ) (TYPE_2__*) ;scalar_t__ (* md_ctrl ) (TYPE_2__*,int ,int,int *) ;int * prov; } ;
typedef int OSSL_PARAM ;
typedef TYPE_2__ EVP_MD_CTX ;


 int EVP_F_EVP_DIGESTFINALXOF ;
 int EVP_MD_CTRL_XOF_LEN ;
 int EVP_MD_CTX_FLAG_CLEANED ;
 int EVP_MD_CTX_reset (TYPE_2__*) ;
 int EVP_MD_CTX_set_flags (TYPE_2__*,int ) ;
 scalar_t__ EVP_MD_CTX_set_params (TYPE_2__*,int *) ;
 int EVP_MD_FLAG_XOF ;
 int EVP_R_FINAL_ERROR ;
 int EVP_R_NOT_XOF_OR_INVALID_LENGTH ;
 int EVPerr (int ,int ) ;
 size_t INT_MAX ;
 int OPENSSL_cleanse (int ,int ) ;
 int OSSL_DIGEST_PARAM_XOFLEN ;
 int OSSL_PARAM_construct_end () ;
 int OSSL_PARAM_construct_size_t (int ,size_t*) ;
 int stub1 (int ,unsigned char*,size_t*,size_t) ;
 scalar_t__ stub2 (TYPE_2__*,int ,int,int *) ;
 int stub3 (TYPE_2__*,unsigned char*) ;
 int stub4 (TYPE_2__*) ;

int EVP_DigestFinalXOF(EVP_MD_CTX *ctx, unsigned char *md, size_t size)
{
    int ret = 0;
    OSSL_PARAM params[2];
    size_t i = 0;

    if (ctx->digest == ((void*)0) || ctx->digest->prov == ((void*)0))
        goto legacy;

    if (ctx->digest->dfinal == ((void*)0)) {
        EVPerr(EVP_F_EVP_DIGESTFINALXOF, EVP_R_FINAL_ERROR);
        return 0;
    }

    params[i++] = OSSL_PARAM_construct_size_t(OSSL_DIGEST_PARAM_XOFLEN, &size);
    params[i++] = OSSL_PARAM_construct_end();

    if (EVP_MD_CTX_set_params(ctx, params) > 0)
        ret = ctx->digest->dfinal(ctx->provctx, md, &size, size);
    EVP_MD_CTX_reset(ctx);
    return ret;

legacy:
    if (ctx->digest->flags & EVP_MD_FLAG_XOF
        && size <= INT_MAX
        && ctx->digest->md_ctrl(ctx, EVP_MD_CTRL_XOF_LEN, (int)size, ((void*)0))) {
        ret = ctx->digest->final(ctx, md);
        if (ctx->digest->cleanup != ((void*)0)) {
            ctx->digest->cleanup(ctx);
            EVP_MD_CTX_set_flags(ctx, EVP_MD_CTX_FLAG_CLEANED);
        }
        OPENSSL_cleanse(ctx->md_data, ctx->digest->ctx_size);
    } else {
        EVPerr(EVP_F_EVP_DIGESTFINALXOF, EVP_R_NOT_XOF_OR_INVALID_LENGTH);
    }

    return ret;
}
