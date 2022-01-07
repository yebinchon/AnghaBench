
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int error_depth; int error; int (* verify_cb ) (int ,TYPE_1__*) ;int chain; int * current_cert; } ;
typedef TYPE_1__ X509_STORE_CTX ;
typedef int X509 ;


 int X509_V_OK ;
 int * sk_X509_value (int ,int) ;
 int stub1 (int ,TYPE_1__*) ;

__attribute__((used)) static int verify_cb_cert(X509_STORE_CTX *ctx, X509 *x, int depth, int err)
{
    ctx->error_depth = depth;
    ctx->current_cert = (x != ((void*)0)) ? x : sk_X509_value(ctx->chain, depth);
    if (err != X509_V_OK)
        ctx->error = err;
    return ctx->verify_cb(0, ctx);
}
