
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* async_cb_arg; } ;
typedef TYPE_1__ SSL_CTX ;



int SSL_CTX_set_async_callback_arg(SSL_CTX *ctx, void *arg)
{
    ctx->async_cb_arg = arg;
    return 1;
}
