
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int global; } ;
typedef int OSSL_EX_DATA_GLOBAL ;
typedef TYPE_1__ OPENSSL_CTX ;


 TYPE_1__* openssl_ctx_get_concrete (TYPE_1__*) ;

OSSL_EX_DATA_GLOBAL *openssl_ctx_get_ex_data_global(OPENSSL_CTX *ctx)
{
    ctx = openssl_ctx_get_concrete(ctx);
    if (ctx == ((void*)0))
        return ((void*)0);
    return &ctx->global;
}
