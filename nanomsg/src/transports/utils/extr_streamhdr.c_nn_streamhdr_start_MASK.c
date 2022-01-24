#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct nn_usock {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * fsm; int /*<<< orphan*/  src; } ;
struct nn_streamhdr {int /*<<< orphan*/  fsm; scalar_t__ protohdr; struct nn_pipebase* pipebase; struct nn_usock* usock; TYPE_1__ usock_owner; } ;
struct nn_pipebase {int dummy; } ;
typedef  int /*<<< orphan*/  protocol ;

/* Variables and functions */
 int /*<<< orphan*/  NN_PROTOCOL ; 
 int /*<<< orphan*/  NN_SOL_SOCKET ; 
 int /*<<< orphan*/  NN_STREAMHDR_SRC_USOCK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nn_pipebase*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nn_usock*,TYPE_1__*) ; 

void FUNC6 (struct nn_streamhdr *self, struct nn_usock *usock,
    struct nn_pipebase *pipebase)
{
    size_t sz;
    int protocol;

    /*  Take ownership of the underlying socket. */
    FUNC1 (self->usock == NULL && self->usock_owner.fsm == NULL);
    self->usock_owner.src = NN_STREAMHDR_SRC_USOCK;
    self->usock_owner.fsm = &self->fsm;
    FUNC5 (usock, &self->usock_owner);
    self->usock = usock;
    self->pipebase = pipebase;

    /*  Get the protocol identifier. */
    sz = sizeof (protocol);
    FUNC3 (pipebase, NN_SOL_SOCKET, NN_PROTOCOL, &protocol, &sz);
    FUNC1 (sz == sizeof (protocol));

    /*  Compose the protocol header. */
    FUNC0 (self->protohdr, "\0SP\0\0\0\0\0", 8);
    FUNC4 (self->protohdr + 4, (uint16_t) protocol);

    /*  Launch the state machine. */
    FUNC2 (&self->fsm);
}