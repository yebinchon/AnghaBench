
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_btcp {int fsm; int usock; int * atcp; int atcps; } ;


 int NN_BTCP_STATE_IDLE ;
 int nn_assert (int ) ;
 int nn_assert_state (struct nn_btcp*,int ) ;
 int nn_free (struct nn_btcp*) ;
 int nn_fsm_term (int *) ;
 int nn_list_term (int *) ;
 int nn_usock_term (int *) ;

__attribute__((used)) static void nn_btcp_destroy (void *self)
{
    struct nn_btcp *btcp = self;

    nn_assert_state (btcp, NN_BTCP_STATE_IDLE);
    nn_list_term (&btcp->atcps);
    nn_assert (btcp->atcp == ((void*)0));
    nn_usock_term (&btcp->usock);
    nn_fsm_term (&btcp->fsm);

    nn_free (btcp);
}
