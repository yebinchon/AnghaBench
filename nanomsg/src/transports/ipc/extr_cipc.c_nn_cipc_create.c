
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_ep {int dummy; } ;
struct nn_cipc {int fsm; int sipc; int retry; int usock; int state; struct nn_ep* ep; } ;
typedef int reconnect_ivl_max ;
typedef int reconnect_ivl ;


 int NN_CIPC_SRC_RECONNECT_TIMER ;
 int NN_CIPC_SRC_SIPC ;
 int NN_CIPC_SRC_USOCK ;
 int NN_CIPC_STATE_IDLE ;
 int NN_RECONNECT_IVL ;
 int NN_RECONNECT_IVL_MAX ;
 int NN_SOL_SOCKET ;
 int alloc_assert (struct nn_cipc*) ;
 struct nn_cipc* nn_alloc (int,char*) ;
 int nn_assert (int) ;
 int nn_backoff_init (int *,int ,int,int,int *) ;
 int nn_cipc_ep_ops ;
 int nn_cipc_handler ;
 int nn_cipc_shutdown ;
 int nn_ep_getctx (struct nn_ep*) ;
 int nn_ep_getopt (struct nn_ep*,int ,int ,int*,size_t*) ;
 int nn_ep_tran_setup (struct nn_ep*,int *,struct nn_cipc*) ;
 int nn_fsm_init_root (int *,int ,int ,int ) ;
 int nn_fsm_start (int *) ;
 int nn_sipc_init (int *,int ,struct nn_ep*,int *) ;
 int nn_usock_init (int *,int ,int *) ;

int nn_cipc_create (struct nn_ep *ep)
{
    struct nn_cipc *self;
    int reconnect_ivl;
    int reconnect_ivl_max;
    size_t sz;


    self = nn_alloc (sizeof (struct nn_cipc), "cipc");
    alloc_assert (self);


    self->ep = ep;
    nn_ep_tran_setup (ep, &nn_cipc_ep_ops, self);
    nn_fsm_init_root (&self->fsm, nn_cipc_handler, nn_cipc_shutdown,
        nn_ep_getctx (ep));
    self->state = NN_CIPC_STATE_IDLE;
    nn_usock_init (&self->usock, NN_CIPC_SRC_USOCK, &self->fsm);
    sz = sizeof (reconnect_ivl);
    nn_ep_getopt (ep, NN_SOL_SOCKET, NN_RECONNECT_IVL, &reconnect_ivl, &sz);
    nn_assert (sz == sizeof (reconnect_ivl));
    sz = sizeof (reconnect_ivl_max);
    nn_ep_getopt (ep, NN_SOL_SOCKET, NN_RECONNECT_IVL_MAX,
        &reconnect_ivl_max, &sz);
    nn_assert (sz == sizeof (reconnect_ivl_max));
    if (reconnect_ivl_max == 0)
        reconnect_ivl_max = reconnect_ivl;
    nn_backoff_init (&self->retry, NN_CIPC_SRC_RECONNECT_TIMER,
        reconnect_ivl, reconnect_ivl_max, &self->fsm);
    nn_sipc_init (&self->sipc, NN_CIPC_SRC_SIPC, ep, &self->fsm);


    nn_fsm_start (&self->fsm);

    return 0;
}
