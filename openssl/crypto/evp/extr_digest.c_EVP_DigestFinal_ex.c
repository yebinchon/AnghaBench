
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int (* dfinal ) (int ,unsigned char*,size_t*,size_t) ;int (* final ) (TYPE_1__*,unsigned char*) ;int ctx_size; int (* cleanup ) (TYPE_1__*) ;int * prov; } ;
struct TYPE_7__ {TYPE_4__* digest; int md_data; int provctx; } ;
typedef TYPE_1__ EVP_MD_CTX ;


 int EVP_F_EVP_DIGESTFINAL_EX ;
 size_t EVP_MAX_MD_SIZE ;
 int EVP_MD_CTX_FLAG_CLEANED ;
 int EVP_MD_CTX_set_flags (TYPE_1__*,int ) ;
 size_t EVP_MD_size (TYPE_4__*) ;
 int EVP_R_FINAL_ERROR ;
 int EVPerr (int ,int ) ;
 int OPENSSL_assert (int) ;
 int OPENSSL_cleanse (int ,int ) ;
 size_t UINT_MAX ;
 int stub1 (int ,unsigned char*,size_t*,size_t) ;
 int stub2 (TYPE_1__*,unsigned char*) ;
 int stub3 (TYPE_1__*) ;

int EVP_DigestFinal_ex(EVP_MD_CTX *ctx, unsigned char *md, unsigned int *isize)
{
    int ret;
    size_t size = 0;
    size_t mdsize = EVP_MD_size(ctx->digest);

    if (ctx->digest == ((void*)0) || ctx->digest->prov == ((void*)0))
        goto legacy;

    if (ctx->digest->dfinal == ((void*)0)) {
        EVPerr(EVP_F_EVP_DIGESTFINAL_EX, EVP_R_FINAL_ERROR);
        return 0;
    }

    ret = ctx->digest->dfinal(ctx->provctx, md, &size, mdsize);

    if (isize != ((void*)0)) {
        if (size <= UINT_MAX) {
            *isize = (int)size;
        } else {
            EVPerr(EVP_F_EVP_DIGESTFINAL_EX, EVP_R_FINAL_ERROR);
            ret = 0;
        }
    }

    return ret;


 legacy:
    OPENSSL_assert(mdsize <= EVP_MAX_MD_SIZE);
    ret = ctx->digest->final(ctx, md);
    if (isize != ((void*)0))
        *isize = mdsize;
    if (ctx->digest->cleanup) {
        ctx->digest->cleanup(ctx);
        EVP_MD_CTX_set_flags(ctx, EVP_MD_CTX_FLAG_CLEANED);
    }
    OPENSSL_cleanse(ctx->md_data, ctx->digest->ctx_size);
    return ret;
}
