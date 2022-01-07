
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_fsm {int dummy; } ;
struct nn_dns {int done; int state; int fsm; } ;


 int NN_DNS_STATE_IDLE ;
 int nn_dns_handler ;
 int nn_dns_shutdown ;
 int nn_fsm_event_init (int *) ;
 int nn_fsm_init (int *,int ,int ,int,struct nn_dns*,struct nn_fsm*) ;

void nn_dns_init (struct nn_dns *self, int src, struct nn_fsm *owner)
{
    nn_fsm_init (&self->fsm, nn_dns_handler, nn_dns_shutdown,
        src, self, owner);
    self->state = NN_DNS_STATE_IDLE;
    nn_fsm_event_init (&self->done);
}
