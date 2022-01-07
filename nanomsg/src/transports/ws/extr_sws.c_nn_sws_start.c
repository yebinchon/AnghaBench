
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct nn_usock {int dummy; } ;
struct TYPE_2__ {int * fsm; int src; } ;
struct nn_sws {int mode; char const* resource; char const* remote_host; int fsm; int msg_type; struct nn_usock* usock; TYPE_1__ usock_owner; } ;


 int NN_SWS_SRC_USOCK ;
 int nn_assert (int) ;
 int nn_fsm_start (int *) ;
 int nn_usock_swap_owner (struct nn_usock*,TYPE_1__*) ;

void nn_sws_start (struct nn_sws *self, struct nn_usock *usock, int mode,
    const char *resource, const char *host, uint8_t msg_type)
{

    nn_assert (self->usock == ((void*)0) && self->usock_owner.fsm == ((void*)0));
    self->usock_owner.src = NN_SWS_SRC_USOCK;
    self->usock_owner.fsm = &self->fsm;
    nn_usock_swap_owner (usock, &self->usock_owner);
    self->usock = usock;
    self->mode = mode;
    self->resource = resource;
    self->remote_host = host;

    self->msg_type = msg_type;


    nn_fsm_start (&self->fsm);
}
