
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int engine; scalar_t__ cipher_data; TYPE_1__* cipher; int * fetched_cipher; int * provctx; } ;
struct TYPE_6__ {scalar_t__ ctx_size; int (* cleanup ) (TYPE_2__*) ;int (* freectx ) (int *) ;int * prov; } ;
typedef TYPE_2__ EVP_CIPHER_CTX ;


 int ENGINE_finish (int ) ;
 int EVP_CIPHER_free (int *) ;
 int OPENSSL_cleanse (scalar_t__,scalar_t__) ;
 int OPENSSL_free (scalar_t__) ;
 int memset (TYPE_2__*,int ,int) ;
 int stub1 (int *) ;
 int stub2 (TYPE_2__*) ;

int EVP_CIPHER_CTX_reset(EVP_CIPHER_CTX *ctx)
{
    if (ctx == ((void*)0))
        return 1;

    if (ctx->cipher == ((void*)0) || ctx->cipher->prov == ((void*)0))
        goto legacy;

    if (ctx->provctx != ((void*)0)) {
        if (ctx->cipher->freectx != ((void*)0))
            ctx->cipher->freectx(ctx->provctx);
        ctx->provctx = ((void*)0);
    }
    if (ctx->fetched_cipher != ((void*)0))
        EVP_CIPHER_free(ctx->fetched_cipher);
    memset(ctx, 0, sizeof(*ctx));

    return 1;


 legacy:

    if (ctx->cipher != ((void*)0)) {
        if (ctx->cipher->cleanup && !ctx->cipher->cleanup(ctx))
            return 0;

        if (ctx->cipher_data && ctx->cipher->ctx_size)
            OPENSSL_cleanse(ctx->cipher_data, ctx->cipher->ctx_size);
    }
    OPENSSL_free(ctx->cipher_data);

    ENGINE_finish(ctx->engine);

    memset(ctx, 0, sizeof(*ctx));
    return 1;
}
