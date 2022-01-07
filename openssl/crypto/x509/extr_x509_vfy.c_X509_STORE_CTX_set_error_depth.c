
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int error_depth; } ;
typedef TYPE_1__ X509_STORE_CTX ;



void X509_STORE_CTX_set_error_depth(X509_STORE_CTX *ctx, int depth)
{
    ctx->error_depth = depth;
}
