
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_STORE_CTX_verify_cb ;
struct TYPE_3__ {int verify_cb; } ;
typedef TYPE_1__ X509_STORE ;



X509_STORE_CTX_verify_cb X509_STORE_get_verify_cb(X509_STORE *ctx)
{
    return ctx->verify_cb;
}
