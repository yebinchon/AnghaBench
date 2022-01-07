
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ loader_ctx; TYPE_1__* loader; } ;
struct TYPE_5__ {int (* close ) (scalar_t__) ;} ;
typedef TYPE_2__ OSSL_STORE_CTX ;


 int OPENSSL_free (TYPE_2__*) ;
 int OSSL_TRACE1 (int ,char*,void*) ;
 int STORE ;
 int stub1 (scalar_t__) ;

int OSSL_STORE_close(OSSL_STORE_CTX *ctx)
{
    int loader_ret;

    OSSL_TRACE1(STORE, "Closing %p\n", (void *)ctx->loader_ctx);
    loader_ret = ctx->loader->close(ctx->loader_ctx);

    OPENSSL_free(ctx);
    return loader_ret;
}
