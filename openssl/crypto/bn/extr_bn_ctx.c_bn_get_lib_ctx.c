
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * libctx; } ;
typedef int OPENSSL_CTX ;
typedef TYPE_1__ BN_CTX ;



OPENSSL_CTX *bn_get_lib_ctx(BN_CTX *ctx)
{
    if (ctx == ((void*)0))
        return ((void*)0);
    return ctx->libctx;
}
