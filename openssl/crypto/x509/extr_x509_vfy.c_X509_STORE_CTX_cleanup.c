
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ex_data; int * chain; int * tree; int * param; int * parent; int (* cleanup ) (TYPE_1__*) ;} ;
typedef TYPE_1__ X509_STORE_CTX ;


 int CRYPTO_EX_INDEX_X509_STORE_CTX ;
 int CRYPTO_free_ex_data (int ,TYPE_1__*,int *) ;
 int X509_VERIFY_PARAM_free (int *) ;
 int X509_free ;
 int X509_policy_tree_free (int *) ;
 int memset (int *,int ,int) ;
 int sk_X509_pop_free (int *,int ) ;
 int stub1 (TYPE_1__*) ;

void X509_STORE_CTX_cleanup(X509_STORE_CTX *ctx)
{







    if (ctx->cleanup != ((void*)0)) {
        ctx->cleanup(ctx);
        ctx->cleanup = ((void*)0);
    }
    if (ctx->param != ((void*)0)) {
        if (ctx->parent == ((void*)0))
            X509_VERIFY_PARAM_free(ctx->param);
        ctx->param = ((void*)0);
    }
    X509_policy_tree_free(ctx->tree);
    ctx->tree = ((void*)0);
    sk_X509_pop_free(ctx->chain, X509_free);
    ctx->chain = ((void*)0);
    CRYPTO_free_ex_data(CRYPTO_EX_INDEX_X509_STORE_CTX, ctx, &(ctx->ex_data));
    memset(&ctx->ex_data, 0, sizeof(ctx->ex_data));
}
