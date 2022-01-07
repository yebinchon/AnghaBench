
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_transport {int (* bind ) (struct nn_ep*) ;int (* connect ) (struct nn_ep*) ;} ;
struct nn_sock {int ep_template; int fsm; } ;
struct nn_ep_options {int dummy; } ;
struct nn_ep {int eid; int fsm; int item; int addr; int options; scalar_t__ last_errno; struct nn_sock* sock; int state; } ;


 int NN_EP_STATE_IDLE ;
 scalar_t__ NN_SOCKADDR_MAX ;
 int memcpy (int *,int *,int) ;
 int nn_assert (int) ;
 int nn_ep_handler ;
 int nn_ep_shutdown ;
 int nn_fsm_init (int *,int ,int ,int,struct nn_ep*,int *) ;
 int nn_fsm_term (int *) ;
 int nn_list_item_init (int *) ;
 int nn_list_item_term (int *) ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;
 int stub1 (struct nn_ep*) ;
 int stub2 (struct nn_ep*) ;

int nn_ep_init (struct nn_ep *self, int src, struct nn_sock *sock, int eid,
    const struct nn_transport *transport, int bind, const char *addr)
{
    int rc;

    nn_fsm_init (&self->fsm, nn_ep_handler, nn_ep_shutdown,
        src, self, &sock->fsm);
    self->state = NN_EP_STATE_IDLE;

    self->sock = sock;
    self->eid = eid;
    self->last_errno = 0;
    nn_list_item_init (&self->item);
    memcpy (&self->options, &sock->ep_template, sizeof(struct nn_ep_options));


    nn_assert (strlen (addr) <= NN_SOCKADDR_MAX);
    strcpy (self->addr, addr);


    if (bind)
        rc = transport->bind (self);
    else
        rc = transport->connect (self);


    if (rc < 0) {
        nn_list_item_term (&self->item);
        nn_fsm_term (&self->fsm);
        return rc;
    }

    return 0;
}
