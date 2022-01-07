
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* async_cb_arg; } ;
typedef TYPE_1__ SSL ;



int SSL_set_async_callback_arg(SSL *s, void *arg)
{
    s->async_cb_arg = arg;
    return 1;
}
