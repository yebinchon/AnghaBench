
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_sinproc {int fsm; int pipebase; int msgqueue; int msg; int event_connect; int event_sent; int event_received; int event_disconnect; int item; } ;


 int nn_fsm_event_term (int *) ;
 int nn_fsm_term (int *) ;
 int nn_list_item_term (int *) ;
 int nn_msg_term (int *) ;
 int nn_msgqueue_term (int *) ;
 int nn_pipebase_term (int *) ;

void nn_sinproc_term (struct nn_sinproc *self)
{
    nn_list_item_term (&self->item);
    nn_fsm_event_term (&self->event_disconnect);
    nn_fsm_event_term (&self->event_received);
    nn_fsm_event_term (&self->event_sent);
    nn_fsm_event_term (&self->event_connect);
    nn_msg_term (&self->msg);
    nn_msgqueue_term (&self->msgqueue);
    nn_pipebase_term (&self->pipebase);
    nn_fsm_term (&self->fsm);
}
