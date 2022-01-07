
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int X509_STORE ;
struct TYPE_9__ {int * chain_store; int * verify_store; } ;
struct TYPE_8__ {TYPE_2__* ssl; TYPE_1__* ctx; } ;
struct TYPE_7__ {TYPE_4__* cert; } ;
struct TYPE_6__ {TYPE_4__* cert; } ;
typedef TYPE_3__ SSL_CONF_CTX ;
typedef TYPE_4__ CERT ;


 int X509_STORE_load_file (int *,char const*) ;
 int X509_STORE_load_path (int *,char const*) ;
 int X509_STORE_load_store (int *,char const*) ;
 int * X509_STORE_new () ;

__attribute__((used)) static int do_store(SSL_CONF_CTX *cctx,
                    const char *CAfile, const char *CApath, const char *CAstore,
                    int verify_store)
{
    CERT *cert;
    X509_STORE **st;

    if (cctx->ctx)
        cert = cctx->ctx->cert;
    else if (cctx->ssl)
        cert = cctx->ssl->cert;
    else
        return 1;
    st = verify_store ? &cert->verify_store : &cert->chain_store;
    if (*st == ((void*)0)) {
        *st = X509_STORE_new();
        if (*st == ((void*)0))
            return 0;
    }

    if (CAfile != ((void*)0) && !X509_STORE_load_file(*st, CAfile))
        return 0;
    if (CApath != ((void*)0) && !X509_STORE_load_path(*st, CApath))
        return 0;
    if (CAstore != ((void*)0) && !X509_STORE_load_store(*st, CAstore))
        return 0;
    return 1;
}
