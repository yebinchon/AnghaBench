#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nn_transport {int (* bind ) (struct nn_ep*) ;int (* connect ) (struct nn_ep*) ;} ;
struct nn_sock {int /*<<< orphan*/  ep_template; int /*<<< orphan*/  fsm; } ;
struct nn_ep_options {int dummy; } ;
struct nn_ep {int eid; int /*<<< orphan*/  fsm; int /*<<< orphan*/  item; int /*<<< orphan*/  addr; int /*<<< orphan*/  options; scalar_t__ last_errno; struct nn_sock* sock; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  NN_EP_STATE_IDLE ; 
 scalar_t__ NN_SOCKADDR_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  nn_ep_handler ; 
 int /*<<< orphan*/  nn_ep_shutdown ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct nn_ep*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC7 (char const*) ; 
 int FUNC8 (struct nn_ep*) ; 
 int FUNC9 (struct nn_ep*) ; 

int FUNC10 (struct nn_ep *self, int src, struct nn_sock *sock, int eid,
    const struct nn_transport *transport, int bind, const char *addr)
{
    int rc;

    FUNC2 (&self->fsm, nn_ep_handler, nn_ep_shutdown,
        src, self, &sock->fsm);
    self->state = NN_EP_STATE_IDLE;

    self->sock = sock;
    self->eid = eid;
    self->last_errno = 0;
    FUNC4 (&self->item);
    FUNC0 (&self->options, &sock->ep_template, sizeof(struct nn_ep_options));

    /*  Store the textual form of the address. */
    FUNC1 (FUNC7 (addr) <= NN_SOCKADDR_MAX);
    FUNC6 (self->addr, addr);

    /*  Create transport-specific part of the endpoint. */
    if (bind)
        rc = transport->bind (self);
    else
        rc = transport->connect (self);

    /*  Endpoint creation failed. */
    if (rc < 0) {
        FUNC5 (&self->item);
        FUNC3 (&self->fsm);
        return rc;
    }

    return 0;
}