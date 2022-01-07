
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_ctx {int dummy; } ;
struct nn_sock {struct nn_ctx ctx; } ;



struct nn_ctx *nn_sock_getctx (struct nn_sock *self)
{
    return &self->ctx;
}
