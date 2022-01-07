
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int strength; int v; int b; int a; int A; int B; int s; int g; int N; int info; int login; } ;
struct ssl_ctx_st {TYPE_1__ srp_ctx; } ;


 int BN_free (int ) ;
 int OPENSSL_free (int ) ;
 int SRP_MINIMAL_N ;
 int memset (TYPE_1__*,int ,int) ;

int SSL_CTX_SRP_CTX_free(struct ssl_ctx_st *ctx)
{
    if (ctx == ((void*)0))
        return 0;
    OPENSSL_free(ctx->srp_ctx.login);
    OPENSSL_free(ctx->srp_ctx.info);
    BN_free(ctx->srp_ctx.N);
    BN_free(ctx->srp_ctx.g);
    BN_free(ctx->srp_ctx.s);
    BN_free(ctx->srp_ctx.B);
    BN_free(ctx->srp_ctx.A);
    BN_free(ctx->srp_ctx.a);
    BN_free(ctx->srp_ctx.b);
    BN_free(ctx->srp_ctx.v);
    memset(&ctx->srp_ctx, 0, sizeof(ctx->srp_ctx));
    ctx->srp_ctx.strength = SRP_MINIMAL_N;
    return 1;
}
