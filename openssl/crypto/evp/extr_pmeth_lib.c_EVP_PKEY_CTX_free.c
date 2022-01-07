
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int engine; int peerkey; int pkey; int keymgmt; TYPE_1__* pmeth; } ;
struct TYPE_7__ {int (* cleanup ) (TYPE_2__*) ;} ;
typedef TYPE_2__ EVP_PKEY_CTX ;


 int ENGINE_finish (int ) ;
 int EVP_KEYMGMT_free (int ) ;
 int EVP_PKEY_free (int ) ;
 int OPENSSL_free (TYPE_2__*) ;
 int evp_pkey_ctx_free_old_ops (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;

void EVP_PKEY_CTX_free(EVP_PKEY_CTX *ctx)
{
    if (ctx == ((void*)0))
        return;
    if (ctx->pmeth && ctx->pmeth->cleanup)
        ctx->pmeth->cleanup(ctx);

    evp_pkey_ctx_free_old_ops(ctx);
    EVP_KEYMGMT_free(ctx->keymgmt);

    EVP_PKEY_free(ctx->pkey);
    EVP_PKEY_free(ctx->peerkey);

    ENGINE_finish(ctx->engine);

    OPENSSL_free(ctx);
}
