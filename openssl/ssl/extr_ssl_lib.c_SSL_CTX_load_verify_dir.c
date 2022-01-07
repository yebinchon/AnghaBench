
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cert_store; } ;
typedef TYPE_1__ SSL_CTX ;


 int X509_STORE_load_path (int ,char const*) ;

int SSL_CTX_load_verify_dir(SSL_CTX *ctx, const char *CApath)
{
    return X509_STORE_load_path(ctx->cert_store, CApath);
}
