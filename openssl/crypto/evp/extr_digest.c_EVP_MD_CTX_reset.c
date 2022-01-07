
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int engine; TYPE_1__* digest; scalar_t__ md_data; int * provctx; int * reqdigest; int * fetched_digest; int pctx; } ;
struct TYPE_8__ {scalar_t__ ctx_size; int (* cleanup ) (TYPE_2__*) ;int (* freectx ) (int *) ;} ;
typedef TYPE_2__ EVP_MD_CTX ;


 int ENGINE_finish (int ) ;
 int EVP_MD_CTX_FLAG_CLEANED ;
 int EVP_MD_CTX_FLAG_KEEP_PKEY_CTX ;
 int EVP_MD_CTX_FLAG_REUSE ;
 int EVP_MD_CTX_set_flags (TYPE_2__*,int ) ;
 int EVP_MD_CTX_test_flags (TYPE_2__*,int ) ;
 int EVP_MD_free (int *) ;
 int EVP_PKEY_CTX_free (int ) ;
 int OPENSSL_cleanse (TYPE_2__*,int) ;
 int OPENSSL_clear_free (scalar_t__,scalar_t__) ;
 int stub1 (int *) ;
 int stub2 (TYPE_2__*) ;

int EVP_MD_CTX_reset(EVP_MD_CTX *ctx)
{
    if (ctx == ((void*)0))
        return 1;







    if (!EVP_MD_CTX_test_flags(ctx, EVP_MD_CTX_FLAG_KEEP_PKEY_CTX))
        EVP_PKEY_CTX_free(ctx->pctx);


    EVP_MD_free(ctx->fetched_digest);
    ctx->fetched_digest = ((void*)0);
    ctx->reqdigest = ((void*)0);

    if (ctx->provctx != ((void*)0)) {
        if (ctx->digest->freectx != ((void*)0))
            ctx->digest->freectx(ctx->provctx);
        ctx->provctx = ((void*)0);
        EVP_MD_CTX_set_flags(ctx, EVP_MD_CTX_FLAG_CLEANED);
    }







    if (ctx->digest && ctx->digest->cleanup
        && !EVP_MD_CTX_test_flags(ctx, EVP_MD_CTX_FLAG_CLEANED))
        ctx->digest->cleanup(ctx);
    if (ctx->digest && ctx->digest->ctx_size && ctx->md_data
        && !EVP_MD_CTX_test_flags(ctx, EVP_MD_CTX_FLAG_REUSE)) {
        OPENSSL_clear_free(ctx->md_data, ctx->digest->ctx_size);
    }


    ENGINE_finish(ctx->engine);




    OPENSSL_cleanse(ctx, sizeof(*ctx));

    return 1;
}
