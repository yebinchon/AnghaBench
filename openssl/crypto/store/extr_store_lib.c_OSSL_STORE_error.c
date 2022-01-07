
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int loader_ctx; TYPE_1__* loader; } ;
struct TYPE_4__ {int (* error ) (int ) ;} ;
typedef TYPE_2__ OSSL_STORE_CTX ;


 int stub1 (int ) ;

int OSSL_STORE_error(OSSL_STORE_CTX *ctx)
{
    return ctx->loader->error(ctx->loader_ctx);
}
