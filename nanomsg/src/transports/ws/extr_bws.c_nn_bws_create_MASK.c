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
struct sockaddr_storage {int dummy; } ;
struct nn_ep {int dummy; } ;
struct nn_bws {int /*<<< orphan*/  fsm; int /*<<< orphan*/  usock; int /*<<< orphan*/  awss; int /*<<< orphan*/ * aws; int /*<<< orphan*/  state; struct nn_ep* ep; } ;
typedef  int /*<<< orphan*/  ipv4only ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  NN_BWS_SRC_USOCK ; 
 int /*<<< orphan*/  NN_BWS_STATE_IDLE ; 
 int /*<<< orphan*/  NN_IPV4ONLY ; 
 int /*<<< orphan*/  NN_SOL_SOCKET ; 
 int /*<<< orphan*/  FUNC0 (struct nn_bws*) ; 
 struct nn_bws* FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  nn_bws_ep_ops ; 
 int /*<<< orphan*/  nn_bws_handler ; 
 int FUNC3 (struct nn_bws*) ; 
 int /*<<< orphan*/  nn_bws_shutdown ; 
 char* FUNC4 (struct nn_ep*) ; 
 int /*<<< orphan*/  FUNC5 (struct nn_ep*) ; 
 int /*<<< orphan*/  FUNC6 (struct nn_ep*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (struct nn_ep*,int /*<<< orphan*/ *,struct nn_bws*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (char const*,int,int,struct sockaddr_storage*,size_t*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (char const*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC14 (char const*) ; 
 char* FUNC15 (char const*,char) ; 

int FUNC16 (struct nn_ep *ep)
{
    int rc;
    struct nn_bws *self;
    const char *addr;
    const char *end;
    const char *pos;
    struct sockaddr_storage ss;
    size_t sslen;
    int ipv4only;
    size_t ipv4onlylen;

    /*  Allocate the new endpoint object. */
    self = FUNC1 (sizeof (struct nn_bws), "bws");
    FUNC0 (self);
    self->ep = ep;

    FUNC7 (ep, &nn_bws_ep_ops, self);
    addr = FUNC4 (ep);

    /*  Parse the port. */
    end = addr + FUNC14 (addr);
    pos = FUNC15 (addr, ':');
    if (!pos) {
        return -EINVAL;
    }
    ++pos;
    rc = FUNC12 (pos, end - pos);
    if (rc < 0) {
        return -EINVAL;
    }

    /*  Check whether IPv6 is to be used. */
    ipv4onlylen = sizeof (ipv4only);
    FUNC6 (ep, NN_SOL_SOCKET, NN_IPV4ONLY, &ipv4only, &ipv4onlylen);
    FUNC2 (ipv4onlylen == sizeof (ipv4only));

    /*  Parse the address. */
    rc = FUNC10 (addr, pos - addr - 1, ipv4only, &ss, &sslen);
    if (rc < 0) {
        return -ENODEV;
    }

    /*  Initialise the structure. */
    FUNC8 (&self->fsm, nn_bws_handler, nn_bws_shutdown,
        FUNC5 (ep));
    self->state = NN_BWS_STATE_IDLE;
    self->aws = NULL;
    FUNC11 (&self->awss);

    /*  Start the state machine. */
    FUNC9 (&self->fsm);

    FUNC13 (&self->usock, NN_BWS_SRC_USOCK, &self->fsm);

    rc = FUNC3 (self);
    if (rc != 0) {
        return rc;
    }

    return 0;
}