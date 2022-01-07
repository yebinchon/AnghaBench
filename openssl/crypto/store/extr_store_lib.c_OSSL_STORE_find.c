
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int loader_ctx; TYPE_1__* loader; scalar_t__ loading; } ;
struct TYPE_4__ {int (* find ) (int ,int const*) ;} ;
typedef int OSSL_STORE_SEARCH ;
typedef TYPE_2__ OSSL_STORE_CTX ;


 int OSSL_STORE_F_OSSL_STORE_FIND ;
 int OSSL_STORE_R_LOADING_STARTED ;
 int OSSL_STORE_R_UNSUPPORTED_OPERATION ;
 int OSSL_STOREerr (int ,int ) ;
 int stub1 (int ,int const*) ;

int OSSL_STORE_find(OSSL_STORE_CTX *ctx, const OSSL_STORE_SEARCH *search)
{
    if (ctx->loading) {
        OSSL_STOREerr(OSSL_STORE_F_OSSL_STORE_FIND,
                      OSSL_STORE_R_LOADING_STARTED);
        return 0;
    }
    if (ctx->loader->find == ((void*)0)) {
        OSSL_STOREerr(OSSL_STORE_F_OSSL_STORE_FIND,
                      OSSL_STORE_R_UNSUPPORTED_OPERATION);
        return 0;
    }

    return ctx->loader->find(ctx->loader_ctx, search);
}
