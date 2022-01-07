
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_bipc {int fsm; int usock; int * aipc; int aipcs; } ;


 int NN_BIPC_STATE_IDLE ;
 int nn_assert (int ) ;
 int nn_assert_state (struct nn_bipc*,int ) ;
 int nn_free (struct nn_bipc*) ;
 int nn_fsm_term (int *) ;
 int nn_list_term (int *) ;
 int nn_usock_term (int *) ;

__attribute__((used)) static void nn_bipc_destroy (void *self)
{
    struct nn_bipc *bipc = self;

    nn_assert_state (bipc, NN_BIPC_STATE_IDLE);
    nn_list_term (&bipc->aipcs);
    nn_assert (bipc->aipc == ((void*)0));
    nn_usock_term (&bipc->usock);
    nn_fsm_term (&bipc->fsm);

    nn_free (bipc);
}
