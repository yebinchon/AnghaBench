
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int async_cb; } ;
typedef int SSL_async_callback_fn ;
typedef TYPE_1__ SSL ;



int SSL_set_async_callback(SSL *s, SSL_async_callback_fn callback)
{
    s->async_cb = callback;
    return 1;
}
