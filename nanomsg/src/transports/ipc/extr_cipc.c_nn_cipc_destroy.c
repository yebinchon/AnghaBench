
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_cipc {int fsm; int usock; int retry; int sipc; } ;


 int nn_backoff_term (int *) ;
 int nn_free (struct nn_cipc*) ;
 int nn_fsm_term (int *) ;
 int nn_sipc_term (int *) ;
 int nn_usock_term (int *) ;

__attribute__((used)) static void nn_cipc_destroy (void *self)
{
    struct nn_cipc *cipc = self;

    nn_sipc_term (&cipc->sipc);
    nn_backoff_term (&cipc->retry);
    nn_usock_term (&cipc->usock);
    nn_fsm_term (&cipc->fsm);

    nn_free (cipc);
}
