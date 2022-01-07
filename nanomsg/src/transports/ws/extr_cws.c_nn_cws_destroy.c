
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_cws {int fsm; int usock; int retry; int sws; int dns; int nic; int remote_host; int resource; } ;


 int nn_backoff_term (int *) ;
 int nn_chunkref_term (int *) ;
 int nn_dns_term (int *) ;
 int nn_free (struct nn_cws*) ;
 int nn_fsm_term (int *) ;
 int nn_sws_term (int *) ;
 int nn_usock_term (int *) ;

__attribute__((used)) static void nn_cws_destroy (void *self)
{
    struct nn_cws *cws = self;

    nn_chunkref_term (&cws->resource);
    nn_chunkref_term (&cws->remote_host);
    nn_chunkref_term (&cws->nic);
    nn_dns_term (&cws->dns);
    nn_sws_term (&cws->sws);
    nn_backoff_term (&cws->retry);
    nn_usock_term (&cws->usock);
    nn_fsm_term (&cws->fsm);

    nn_free (cws);
}
