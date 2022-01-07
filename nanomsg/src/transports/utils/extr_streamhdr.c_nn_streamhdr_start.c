
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct nn_usock {int dummy; } ;
struct TYPE_2__ {int * fsm; int src; } ;
struct nn_streamhdr {int fsm; scalar_t__ protohdr; struct nn_pipebase* pipebase; struct nn_usock* usock; TYPE_1__ usock_owner; } ;
struct nn_pipebase {int dummy; } ;
typedef int protocol ;


 int NN_PROTOCOL ;
 int NN_SOL_SOCKET ;
 int NN_STREAMHDR_SRC_USOCK ;
 int memcpy (scalar_t__,char*,int) ;
 int nn_assert (int) ;
 int nn_fsm_start (int *) ;
 int nn_pipebase_getopt (struct nn_pipebase*,int ,int ,int*,size_t*) ;
 int nn_puts (scalar_t__,int ) ;
 int nn_usock_swap_owner (struct nn_usock*,TYPE_1__*) ;

void nn_streamhdr_start (struct nn_streamhdr *self, struct nn_usock *usock,
    struct nn_pipebase *pipebase)
{
    size_t sz;
    int protocol;


    nn_assert (self->usock == ((void*)0) && self->usock_owner.fsm == ((void*)0));
    self->usock_owner.src = NN_STREAMHDR_SRC_USOCK;
    self->usock_owner.fsm = &self->fsm;
    nn_usock_swap_owner (usock, &self->usock_owner);
    self->usock = usock;
    self->pipebase = pipebase;


    sz = sizeof (protocol);
    nn_pipebase_getopt (pipebase, NN_SOL_SOCKET, NN_PROTOCOL, &protocol, &sz);
    nn_assert (sz == sizeof (protocol));


    memcpy (self->protohdr, "\0SP\0\0\0\0\0", 8);
    nn_puts (self->protohdr + 4, (uint16_t) protocol);


    nn_fsm_start (&self->fsm);
}
