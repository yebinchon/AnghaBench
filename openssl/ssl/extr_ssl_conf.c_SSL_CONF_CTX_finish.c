
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {TYPE_3__* cert; } ;
struct TYPE_11__ {TYPE_3__* cert; } ;
struct TYPE_10__ {TYPE_1__* pkeys; } ;
struct TYPE_9__ {int flags; char** cert_filename; int * canames; TYPE_6__* ctx; TYPE_5__* ssl; } ;
struct TYPE_8__ {int privatekey; } ;
typedef TYPE_2__ SSL_CONF_CTX ;
typedef TYPE_3__ CERT ;


 int SSL_CONF_FLAG_REQUIRE_PRIVATE ;
 int SSL_CTX_set0_CA_list (TYPE_6__*,int *) ;
 size_t SSL_PKEY_NUM ;
 int SSL_set0_CA_list (TYPE_5__*,int *) ;
 int X509_NAME_free ;
 int cmd_PrivateKey (TYPE_2__*,char const*) ;
 int sk_X509_NAME_pop_free (int *,int ) ;

int SSL_CONF_CTX_finish(SSL_CONF_CTX *cctx)
{

    size_t i;
    CERT *c = ((void*)0);
    if (cctx->ctx)
        c = cctx->ctx->cert;
    else if (cctx->ssl)
        c = cctx->ssl->cert;
    if (c && cctx->flags & SSL_CONF_FLAG_REQUIRE_PRIVATE) {
        for (i = 0; i < SSL_PKEY_NUM; i++) {
            const char *p = cctx->cert_filename[i];



            if (p && !c->pkeys[i].privatekey) {
                if (!cmd_PrivateKey(cctx, p))
                    return 0;
            }
        }
    }
    if (cctx->canames) {
        if (cctx->ssl)
            SSL_set0_CA_list(cctx->ssl, cctx->canames);
        else if (cctx->ctx)
            SSL_CTX_set0_CA_list(cctx->ctx, cctx->canames);
        else
            sk_X509_NAME_pop_free(cctx->canames, X509_NAME_free);
        cctx->canames = ((void*)0);
    }
    return 1;
}
