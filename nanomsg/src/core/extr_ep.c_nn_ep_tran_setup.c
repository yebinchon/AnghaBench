
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_ep_ops {int dummy; } ;
struct nn_ep {void* tran; struct nn_ep_ops ops; } ;



void nn_ep_tran_setup (struct nn_ep *ep, const struct nn_ep_ops *ops,
    void *tran)
{
    ep->ops = *ops;
    ep->tran = tran;
}
