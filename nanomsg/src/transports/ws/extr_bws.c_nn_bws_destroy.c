
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_bws {int fsm; int usock; int * aws; int awss; } ;


 int NN_BWS_STATE_IDLE ;
 int nn_assert (int ) ;
 int nn_assert_state (struct nn_bws*,int ) ;
 int nn_free (struct nn_bws*) ;
 int nn_fsm_term (int *) ;
 int nn_list_term (int *) ;
 int nn_usock_term (int *) ;

__attribute__((used)) static void nn_bws_destroy (void *self)
{
    struct nn_bws *bws = self;

    nn_assert_state (bws, NN_BWS_STATE_IDLE);
    nn_list_term (&bws->awss);
    nn_assert (bws->aws == ((void*)0));
    nn_usock_term (&bws->usock);
    nn_fsm_term (&bws->fsm);

    nn_free (bws);
}
