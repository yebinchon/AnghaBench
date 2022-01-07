
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * v; int * b; int * a; int * A; int * B; int * s; int * g; int * N; int * info; int * login; int srp_Mask; int strength; int SRP_give_srp_client_pwd_callback; int SRP_verify_param_callback; int TLS_ext_srp_username_callback; int SRP_cb_arg; } ;
struct ssl_st {TYPE_3__ srp_ctx; TYPE_2__* ctx; } ;
struct TYPE_4__ {int srp_Mask; int * info; int * login; int * b; int * v; int * a; int * A; int * B; int * s; int * g; int * N; int strength; int SRP_give_srp_client_pwd_callback; int SRP_verify_param_callback; int TLS_ext_srp_username_callback; int SRP_cb_arg; } ;
struct TYPE_5__ {TYPE_1__ srp_ctx; } ;
typedef TYPE_2__ SSL_CTX ;


 void* BN_dup (int *) ;
 int BN_free (int *) ;
 int ERR_R_BN_LIB ;
 int ERR_R_INTERNAL_ERROR ;
 int OPENSSL_free (int *) ;
 void* OPENSSL_strdup (int *) ;
 int SSL_F_SSL_SRP_CTX_INIT ;
 int SSLerr (int ,int ) ;
 int memset (TYPE_3__*,int ,int) ;

int SSL_SRP_CTX_init(struct ssl_st *s)
{
    SSL_CTX *ctx;

    if ((s == ((void*)0)) || ((ctx = s->ctx) == ((void*)0)))
        return 0;

    memset(&s->srp_ctx, 0, sizeof(s->srp_ctx));

    s->srp_ctx.SRP_cb_arg = ctx->srp_ctx.SRP_cb_arg;

    s->srp_ctx.TLS_ext_srp_username_callback =
        ctx->srp_ctx.TLS_ext_srp_username_callback;

    s->srp_ctx.SRP_verify_param_callback =
        ctx->srp_ctx.SRP_verify_param_callback;

    s->srp_ctx.SRP_give_srp_client_pwd_callback =
        ctx->srp_ctx.SRP_give_srp_client_pwd_callback;

    s->srp_ctx.strength = ctx->srp_ctx.strength;

    if (((ctx->srp_ctx.N != ((void*)0)) &&
         ((s->srp_ctx.N = BN_dup(ctx->srp_ctx.N)) == ((void*)0))) ||
        ((ctx->srp_ctx.g != ((void*)0)) &&
         ((s->srp_ctx.g = BN_dup(ctx->srp_ctx.g)) == ((void*)0))) ||
        ((ctx->srp_ctx.s != ((void*)0)) &&
         ((s->srp_ctx.s = BN_dup(ctx->srp_ctx.s)) == ((void*)0))) ||
        ((ctx->srp_ctx.B != ((void*)0)) &&
         ((s->srp_ctx.B = BN_dup(ctx->srp_ctx.B)) == ((void*)0))) ||
        ((ctx->srp_ctx.A != ((void*)0)) &&
         ((s->srp_ctx.A = BN_dup(ctx->srp_ctx.A)) == ((void*)0))) ||
        ((ctx->srp_ctx.a != ((void*)0)) &&
         ((s->srp_ctx.a = BN_dup(ctx->srp_ctx.a)) == ((void*)0))) ||
        ((ctx->srp_ctx.v != ((void*)0)) &&
         ((s->srp_ctx.v = BN_dup(ctx->srp_ctx.v)) == ((void*)0))) ||
        ((ctx->srp_ctx.b != ((void*)0)) &&
         ((s->srp_ctx.b = BN_dup(ctx->srp_ctx.b)) == ((void*)0)))) {
        SSLerr(SSL_F_SSL_SRP_CTX_INIT, ERR_R_BN_LIB);
        goto err;
    }
    if ((ctx->srp_ctx.login != ((void*)0)) &&
        ((s->srp_ctx.login = OPENSSL_strdup(ctx->srp_ctx.login)) == ((void*)0))) {
        SSLerr(SSL_F_SSL_SRP_CTX_INIT, ERR_R_INTERNAL_ERROR);
        goto err;
    }
    if ((ctx->srp_ctx.info != ((void*)0)) &&
        ((s->srp_ctx.info = OPENSSL_strdup(ctx->srp_ctx.info)) == ((void*)0))) {
        SSLerr(SSL_F_SSL_SRP_CTX_INIT, ERR_R_INTERNAL_ERROR);
        goto err;
    }
    s->srp_ctx.srp_Mask = ctx->srp_ctx.srp_Mask;

    return 1;
 err:
    OPENSSL_free(s->srp_ctx.login);
    OPENSSL_free(s->srp_ctx.info);
    BN_free(s->srp_ctx.N);
    BN_free(s->srp_ctx.g);
    BN_free(s->srp_ctx.s);
    BN_free(s->srp_ctx.B);
    BN_free(s->srp_ctx.A);
    BN_free(s->srp_ctx.a);
    BN_free(s->srp_ctx.b);
    BN_free(s->srp_ctx.v);
    memset(&s->srp_ctx, 0, sizeof(s->srp_ctx));
    return 0;
}
