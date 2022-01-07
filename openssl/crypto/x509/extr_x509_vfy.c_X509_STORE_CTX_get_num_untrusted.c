
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_untrusted; } ;
typedef TYPE_1__ X509_STORE_CTX ;



int X509_STORE_CTX_get_num_untrusted(X509_STORE_CTX *ctx)
{
    return ctx->num_untrusted;
}
