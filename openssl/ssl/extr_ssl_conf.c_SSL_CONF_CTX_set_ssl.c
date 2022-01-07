
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int verify_mode; TYPE_1__* cert; int max_proto_version; int min_proto_version; int options; } ;
struct TYPE_7__ {int * pvfy_flags; int * pcert_flags; int * max_version; int * min_version; int * poptions; int * ctx; TYPE_3__* ssl; } ;
struct TYPE_6__ {int cert_flags; } ;
typedef TYPE_2__ SSL_CONF_CTX ;
typedef TYPE_3__ SSL ;



void SSL_CONF_CTX_set_ssl(SSL_CONF_CTX *cctx, SSL *ssl)
{
    cctx->ssl = ssl;
    cctx->ctx = ((void*)0);
    if (ssl) {
        cctx->poptions = &ssl->options;
        cctx->min_version = &ssl->min_proto_version;
        cctx->max_version = &ssl->max_proto_version;
        cctx->pcert_flags = &ssl->cert->cert_flags;
        cctx->pvfy_flags = &ssl->verify_mode;
    } else {
        cctx->poptions = ((void*)0);
        cctx->min_version = ((void*)0);
        cctx->max_version = ((void*)0);
        cctx->pcert_flags = ((void*)0);
        cctx->pvfy_flags = ((void*)0);
    }
}
