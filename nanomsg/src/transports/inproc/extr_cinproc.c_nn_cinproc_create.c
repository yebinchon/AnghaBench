
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_ep {int dummy; } ;
struct nn_cinproc {int item; int fsm; int sinprocs; int state; } ;


 int NN_CINPROC_STATE_IDLE ;
 int NN_STAT_INPROGRESS_CONNECTIONS ;
 int alloc_assert (struct nn_cinproc*) ;
 struct nn_cinproc* nn_alloc (int,char*) ;
 int nn_cinproc_connect ;
 int nn_cinproc_handler ;
 int nn_cinproc_ops ;
 int nn_cinproc_shutdown ;
 int nn_ep_getctx (struct nn_ep*) ;
 int nn_ep_stat_increment (struct nn_ep*,int ,int) ;
 int nn_ep_tran_setup (struct nn_ep*,int *,struct nn_cinproc*) ;
 int nn_fsm_init_root (int *,int ,int ,int ) ;
 int nn_fsm_start (int *) ;
 int nn_ins_connect (int *,int ) ;
 int nn_ins_item_init (int *,struct nn_ep*) ;
 int nn_list_init (int *) ;

int nn_cinproc_create (struct nn_ep *ep)
{
    struct nn_cinproc *self;

    self = nn_alloc (sizeof (struct nn_cinproc), "cinproc");
    alloc_assert (self);

    nn_ep_tran_setup (ep, &nn_cinproc_ops, self);

    nn_ins_item_init (&self->item, ep);
    nn_fsm_init_root (&self->fsm, nn_cinproc_handler, nn_cinproc_shutdown,
        nn_ep_getctx (ep));
    self->state = NN_CINPROC_STATE_IDLE;
    nn_list_init (&self->sinprocs);

    nn_ep_stat_increment (ep, NN_STAT_INPROGRESS_CONNECTIONS, 1);


    nn_fsm_start (&self->fsm);


    nn_ins_connect (&self->item, nn_cinproc_connect);

    return 0;
}
