
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * N; } ;
struct TYPE_9__ {TYPE_3__* ctx; TYPE_1__ srp_ctx; } ;
struct TYPE_7__ {int * N; } ;
struct TYPE_8__ {TYPE_2__ srp_ctx; } ;
typedef TYPE_4__ SSL ;
typedef int BIGNUM ;



BIGNUM *SSL_get_srp_N(SSL *s)
{
    if (s->srp_ctx.N != ((void*)0))
        return s->srp_ctx.N;
    return s->ctx->srp_ctx.N;
}
