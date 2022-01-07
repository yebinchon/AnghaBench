
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_ep {int sock; } ;
struct nn_ctx {int dummy; } ;


 struct nn_ctx* nn_sock_getctx (int ) ;

struct nn_ctx *nn_ep_getctx (struct nn_ep *self)
{
    return nn_sock_getctx (self->sock);
}
