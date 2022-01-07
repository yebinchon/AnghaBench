
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ct_validation_callback; } ;
typedef TYPE_1__ SSL_CTX ;



int SSL_CTX_ct_is_enabled(const SSL_CTX *ctx)
{
    return ctx->ct_validation_callback != ((void*)0);
}
