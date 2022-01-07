
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int md_ctx; int o_ctx; int md; } ;
typedef TYPE_1__ HMAC_CTX ;


 int EVP_DigestFinal_ex (int ,unsigned char*,unsigned int*) ;
 int EVP_DigestUpdate (int ,unsigned char*,unsigned int) ;
 int EVP_MAX_MD_SIZE ;
 int EVP_MD_CTX_copy_ex (int ,int ) ;

int HMAC_Final(HMAC_CTX *ctx, unsigned char *md, unsigned int *len)
{
    unsigned int i;
    unsigned char buf[EVP_MAX_MD_SIZE];

    if (!ctx->md)
        goto err;

    if (!EVP_DigestFinal_ex(ctx->md_ctx, buf, &i))
        goto err;
    if (!EVP_MD_CTX_copy_ex(ctx->md_ctx, ctx->o_ctx))
        goto err;
    if (!EVP_DigestUpdate(ctx->md_ctx, buf, i))
        goto err;
    if (!EVP_DigestFinal_ex(ctx->md_ctx, md, len))
        goto err;
    return 1;
 err:
    return 0;
}
