
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* async_cb ) (TYPE_1__*,int ) ;int async_cb_arg; } ;
typedef TYPE_1__ SSL ;


 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static int ssl_async_wait_ctx_cb(void *arg)
{
    SSL *s = (SSL *)arg;

    return s->async_cb(s, s->async_cb_arg);
}
