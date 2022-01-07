
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_ctcp {int fsm; int usock; int retry; int stcp; int dns; } ;


 int nn_backoff_term (int *) ;
 int nn_dns_term (int *) ;
 int nn_free (struct nn_ctcp*) ;
 int nn_fsm_term (int *) ;
 int nn_stcp_term (int *) ;
 int nn_usock_term (int *) ;

__attribute__((used)) static void nn_ctcp_destroy (void *self)
{
    struct nn_ctcp *ctcp = self;

    nn_dns_term (&ctcp->dns);
    nn_stcp_term (&ctcp->stcp);
    nn_backoff_term (&ctcp->retry);
    nn_usock_term (&ctcp->usock);
    nn_fsm_term (&ctcp->fsm);

    nn_free (ctcp);
}
