
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nlast_block; int last_block; int k2; int k1; int tbl; int cctx; } ;
typedef TYPE_1__ CMAC_CTX ;


 int EVP_CIPHER_CTX_reset (int ) ;
 int EVP_MAX_BLOCK_LENGTH ;
 int OPENSSL_cleanse (int ,int ) ;

void CMAC_CTX_cleanup(CMAC_CTX *ctx)
{
    EVP_CIPHER_CTX_reset(ctx->cctx);
    OPENSSL_cleanse(ctx->tbl, EVP_MAX_BLOCK_LENGTH);
    OPENSSL_cleanse(ctx->k1, EVP_MAX_BLOCK_LENGTH);
    OPENSSL_cleanse(ctx->k2, EVP_MAX_BLOCK_LENGTH);
    OPENSSL_cleanse(ctx->last_block, EVP_MAX_BLOCK_LENGTH);
    ctx->nlast_block = -1;
}
