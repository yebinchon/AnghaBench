
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* destroy ) (int ) ;} ;
struct nn_ep {int fsm; int item; int tran; TYPE_1__ ops; } ;


 int NN_EP_STATE_IDLE ;
 int nn_assert_state (struct nn_ep*,int ) ;
 int nn_fsm_term (int *) ;
 int nn_list_item_term (int *) ;
 int stub1 (int ) ;

void nn_ep_term (struct nn_ep *self)
{
    nn_assert_state (self, NN_EP_STATE_IDLE);

    self->ops.destroy (self->tran);
    nn_list_item_term (&self->item);
    nn_fsm_term (&self->fsm);
}
