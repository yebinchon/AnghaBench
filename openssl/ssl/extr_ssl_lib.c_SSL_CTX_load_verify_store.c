
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cert_store; } ;
typedef TYPE_1__ SSL_CTX ;


 int X509_STORE_load_store (int ,char const*) ;

int SSL_CTX_load_verify_store(SSL_CTX *ctx, const char *CAstore)
{
    return X509_STORE_load_store(ctx->cert_store, CAstore);
}
