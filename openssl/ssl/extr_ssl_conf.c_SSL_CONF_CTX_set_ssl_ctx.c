
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * pvfy_flags; int * pcert_flags; int * max_version; int * min_version; int * poptions; int * ssl; TYPE_2__* ctx; } ;
struct TYPE_7__ {int verify_mode; TYPE_1__* cert; int max_proto_version; int min_proto_version; int options; } ;
struct TYPE_6__ {int cert_flags; } ;
typedef TYPE_2__ SSL_CTX ;
typedef TYPE_3__ SSL_CONF_CTX ;



void SSL_CONF_CTX_set_ssl_ctx(SSL_CONF_CTX *cctx, SSL_CTX *ctx)
{
    cctx->ctx = ctx;
    cctx->ssl = ((void*)0);
    if (ctx) {
        cctx->poptions = &ctx->options;
        cctx->min_version = &ctx->min_proto_version;
        cctx->max_version = &ctx->max_proto_version;
        cctx->pcert_flags = &ctx->cert->cert_flags;
        cctx->pvfy_flags = &ctx->verify_mode;
    } else {
        cctx->poptions = ((void*)0);
        cctx->min_version = ((void*)0);
        cctx->max_version = ((void*)0);
        cctx->pcert_flags = ((void*)0);
        cctx->pvfy_flags = ((void*)0);
    }
}
