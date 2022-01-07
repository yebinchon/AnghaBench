
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct nn_ep {int dummy; } ;
struct TYPE_4__ {int state; } ;
struct nn_binproc {int item; TYPE_1__ fsm; int sinprocs; int state; } ;


 int NN_BINPROC_STATE_IDLE ;
 int alloc_assert (struct nn_binproc*) ;
 struct nn_binproc* nn_alloc (int,char*) ;
 int nn_binproc_connect ;
 int nn_binproc_handler ;
 int nn_binproc_ops ;
 int nn_binproc_shutdown ;
 int nn_ep_getctx (struct nn_ep*) ;
 int nn_ep_tran_setup (struct nn_ep*,int *,struct nn_binproc*) ;
 int nn_free (struct nn_binproc*) ;
 int nn_fsm_init_root (TYPE_1__*,int ,int ,int ) ;
 int nn_fsm_start (TYPE_1__*) ;
 int nn_fsm_term (TYPE_1__*) ;
 int nn_ins_bind (int *,int ) ;
 int nn_ins_item_init (int *,struct nn_ep*) ;
 int nn_ins_item_term (int *) ;
 int nn_list_init (int *) ;
 int nn_list_term (int *) ;

int nn_binproc_create (struct nn_ep *ep)
{
    int rc;
    struct nn_binproc *self;

    self = nn_alloc (sizeof (struct nn_binproc), "binproc");
    alloc_assert (self);

    nn_ins_item_init (&self->item, ep);
    nn_fsm_init_root (&self->fsm, nn_binproc_handler, nn_binproc_shutdown,
        nn_ep_getctx (ep));
    self->state = NN_BINPROC_STATE_IDLE;
    nn_list_init (&self->sinprocs);


    nn_fsm_start (&self->fsm);


    rc = nn_ins_bind (&self->item, nn_binproc_connect);
    if (rc < 0) {
        nn_list_term (&self->sinprocs);



        self->fsm.state = 1;
        nn_fsm_term (&self->fsm);

        nn_ins_item_term (&self->item);
        nn_free (self);
        return rc;
    }

    nn_ep_tran_setup (ep, &nn_binproc_ops, self);
    return 0;
}
