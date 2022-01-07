
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_ep {int dummy; } ;
struct nn_bipc {int fsm; int usock; int aipcs; int * aipc; int state; struct nn_ep* ep; } ;


 int NN_BIPC_SRC_USOCK ;
 int NN_BIPC_STATE_IDLE ;
 int alloc_assert (struct nn_bipc*) ;
 struct nn_bipc* nn_alloc (int,char*) ;
 int nn_bipc_ep_ops ;
 int nn_bipc_handler ;
 int nn_bipc_listen (struct nn_bipc*) ;
 int nn_bipc_shutdown ;
 int nn_ep_getctx (struct nn_ep*) ;
 int nn_ep_tran_setup (struct nn_ep*,int *,struct nn_bipc*) ;
 int nn_fsm_init_root (int *,int ,int ,int ) ;
 int nn_fsm_start (int *) ;
 int nn_list_init (int *) ;
 int nn_usock_init (int *,int ,int *) ;

int nn_bipc_create (struct nn_ep *ep)
{
    struct nn_bipc *self;
    int rc;


    self = nn_alloc (sizeof (struct nn_bipc), "bipc");
    alloc_assert (self);



    self->ep = ep;
    nn_ep_tran_setup (ep, &nn_bipc_ep_ops, self);
    nn_fsm_init_root (&self->fsm, nn_bipc_handler, nn_bipc_shutdown,
        nn_ep_getctx (ep));
    self->state = NN_BIPC_STATE_IDLE;
    self->aipc = ((void*)0);
    nn_list_init (&self->aipcs);


    nn_fsm_start (&self->fsm);

    nn_usock_init (&self->usock, NN_BIPC_SRC_USOCK, &self->fsm);

    rc = nn_bipc_listen (self);
    if (rc != 0) {
        return rc;
    }

    return 0;
}
