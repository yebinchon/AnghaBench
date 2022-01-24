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
struct nn_transport {int dummy; } ;
struct nn_sock {int eid; int /*<<< orphan*/  ctx; int /*<<< orphan*/  eps; } ;
struct nn_ep {int /*<<< orphan*/  item; } ;

/* Variables and functions */
 int /*<<< orphan*/  NN_SOCK_SRC_EP ; 
 struct nn_ep* FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct nn_ep*,int /*<<< orphan*/ ,struct nn_sock*,int,struct nn_transport const*,int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct nn_ep*) ; 
 int /*<<< orphan*/  FUNC5 (struct nn_ep*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 

int FUNC9 (struct nn_sock *self, const struct nn_transport *transport,
    int bind, const char *addr)
{
    int rc;
    struct nn_ep *ep;
    int eid;

    FUNC1 (&self->ctx);

    /*  Instantiate the endpoint. */
    ep = FUNC0 (sizeof (struct nn_ep), "endpoint");
    rc = FUNC3 (ep, NN_SOCK_SRC_EP, self, self->eid, transport,
        bind, addr);
    if (FUNC8 (rc < 0)) {
        FUNC5 (ep);
        FUNC2 (&self->ctx);
        return rc;
    }
    FUNC4 (ep);

    /*  Increase the endpoint ID for the next endpoint. */
    eid = self->eid;
    ++self->eid;

    /*  Add it to the list of active endpoints. */
    FUNC7 (&self->eps, &ep->item, FUNC6 (&self->eps));

    FUNC2 (&self->ctx);

    return eid;
}