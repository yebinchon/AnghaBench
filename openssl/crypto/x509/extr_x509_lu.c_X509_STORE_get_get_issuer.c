
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_STORE_CTX_get_issuer_fn ;
struct TYPE_3__ {int get_issuer; } ;
typedef TYPE_1__ X509_STORE ;



X509_STORE_CTX_get_issuer_fn X509_STORE_get_get_issuer(X509_STORE *ctx)
{
    return ctx->get_issuer;
}
