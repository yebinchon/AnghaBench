
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int md; int key_length; int key; int md_ctx; int o_ctx; int i_ctx; } ;
typedef TYPE_1__ HMAC_CTX ;


 int EVP_MD_CTX_copy_ex (int ,int ) ;
 int HMAC_MAX_MD_CBLOCK_SIZE ;
 int hmac_ctx_alloc_mds (TYPE_1__*) ;
 int hmac_ctx_cleanup (TYPE_1__*) ;
 int memcpy (int ,int ,int ) ;

int HMAC_CTX_copy(HMAC_CTX *dctx, HMAC_CTX *sctx)
{
    if (!hmac_ctx_alloc_mds(dctx))
        goto err;
    if (!EVP_MD_CTX_copy_ex(dctx->i_ctx, sctx->i_ctx))
        goto err;
    if (!EVP_MD_CTX_copy_ex(dctx->o_ctx, sctx->o_ctx))
        goto err;
    if (!EVP_MD_CTX_copy_ex(dctx->md_ctx, sctx->md_ctx))
        goto err;
    memcpy(dctx->key, sctx->key, HMAC_MAX_MD_CBLOCK_SIZE);
    dctx->key_length = sctx->key_length;
    dctx->md = sctx->md;
    return 1;
 err:
    hmac_ctx_cleanup(dctx);
    return 0;
}
