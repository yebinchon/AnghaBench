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
struct nn_ctcp {int /*<<< orphan*/  fsm; int /*<<< orphan*/  dns; int /*<<< orphan*/  stcp; int /*<<< orphan*/  retry; int /*<<< orphan*/  usock; int /*<<< orphan*/  state; struct nn_ep* ep; } ;
typedef  int /*<<< orphan*/  reconnect_ivl_max ;
typedef  int /*<<< orphan*/  reconnect_ivl ;
typedef  int /*<<< orphan*/  ipv4only ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  NN_CTCP_SRC_DNS ; 
 int /*<<< orphan*/  NN_CTCP_SRC_RECONNECT_TIMER ; 
 int /*<<< orphan*/  NN_CTCP_SRC_STCP ; 
 int /*<<< orphan*/  NN_CTCP_SRC_USOCK ; 
 int /*<<< orphan*/  NN_CTCP_STATE_IDLE ; 
 int /*<<< orphan*/  NN_IPV4ONLY ; 
 int /*<<< orphan*/  NN_RECONNECT_IVL ; 
 int /*<<< orphan*/  NN_RECONNECT_IVL_MAX ; 
 int /*<<< orphan*/  NN_SOL_SOCKET ; 
 int /*<<< orphan*/  FUNC0 (struct nn_ctcp*) ; 
 struct nn_ctcp* FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nn_ctcp_ep_ops ; 
 int /*<<< orphan*/  nn_ctcp_handler ; 
 int /*<<< orphan*/  nn_ctcp_shutdown ; 
 scalar_t__ FUNC4 (char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC6 (struct nn_ep*) ; 
 int /*<<< orphan*/  FUNC7 (struct nn_ep*) ; 
 int /*<<< orphan*/  FUNC8 (struct nn_ep*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,size_t*) ; 
 int /*<<< orphan*/  FUNC9 (struct nn_ep*,int /*<<< orphan*/ *,struct nn_ctcp*) ; 
 int /*<<< orphan*/  FUNC10 (struct nn_ctcp*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (char const*,int,int,struct sockaddr_storage*,size_t*) ; 
 scalar_t__ FUNC14 (char const*,int,int,struct sockaddr_storage*,size_t*) ; 
 int FUNC15 (char const*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nn_ep*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC18 (char const*,char) ; 
 size_t FUNC19 (char const*) ; 
 char* FUNC20 (char const*,char) ; 

int FUNC21 (struct nn_ep *ep)
{
    int rc;
    const char *addr;
    size_t addrlen;
    const char *semicolon;
    const char *hostname;
    const char *colon;
    const char *end;
    struct sockaddr_storage ss;
    size_t sslen;
    int ipv4only;
    size_t ipv4onlylen;
    struct nn_ctcp *self;
    int reconnect_ivl;
    int reconnect_ivl_max;
    size_t sz;

    /*  Allocate the new endpoint object. */
    self = FUNC1 (sizeof (struct nn_ctcp), "ctcp");
    FUNC0 (self);

    /*  Initalise the endpoint. */
    self->ep = ep;
    FUNC9 (ep, &nn_ctcp_ep_ops, self);

    /*  Check whether IPv6 is to be used. */
    ipv4onlylen = sizeof (ipv4only);
    FUNC8 (ep, NN_SOL_SOCKET, NN_IPV4ONLY, &ipv4only, &ipv4onlylen);
    FUNC2 (ipv4onlylen == sizeof (ipv4only));

    /*  Start parsing the address. */
    addr = FUNC6 (ep);
    addrlen = FUNC19 (addr);
    semicolon = FUNC18 (addr, ';');
    hostname = semicolon ? semicolon + 1 : addr;
    colon = FUNC20 (addr, ':');
    end = addr + addrlen;

    /*  Parse the port. */
    if (!colon) {
        FUNC10 (self);
        return -EINVAL;
    }
    rc = FUNC15 (colon + 1, end - colon - 1);
    if (rc < 0) {
        FUNC10 (self);
        return -EINVAL;
    }

    /*  Check whether the host portion of the address is either a literal
        or a valid hostname. */
    if (FUNC4 (hostname, colon - hostname) < 0 &&
          FUNC14 (hostname, colon - hostname, ipv4only,
          &ss, &sslen) < 0) {
        FUNC10 (self);
        return -EINVAL;
    }

    /*  If local address is specified, check whether it is valid. */
    if (semicolon) {
        rc = FUNC13 (addr, semicolon - addr, ipv4only, &ss, &sslen);
        if (rc < 0) {
            FUNC10 (self);
            return -ENODEV;
        }
    }

    /*  Initialise the structure. */
    FUNC11 (&self->fsm, nn_ctcp_handler, nn_ctcp_shutdown,
        FUNC7 (ep));
    self->state = NN_CTCP_STATE_IDLE;
    FUNC17 (&self->usock, NN_CTCP_SRC_USOCK, &self->fsm);
    sz = sizeof (reconnect_ivl);
    FUNC8 (ep, NN_SOL_SOCKET, NN_RECONNECT_IVL, &reconnect_ivl, &sz);
    FUNC2 (sz == sizeof (reconnect_ivl));
    sz = sizeof (reconnect_ivl_max);
    FUNC8 (ep, NN_SOL_SOCKET, NN_RECONNECT_IVL_MAX,
        &reconnect_ivl_max, &sz);
    FUNC2 (sz == sizeof (reconnect_ivl_max));
    if (reconnect_ivl_max == 0)
        reconnect_ivl_max = reconnect_ivl;
    FUNC3 (&self->retry, NN_CTCP_SRC_RECONNECT_TIMER,
        reconnect_ivl, reconnect_ivl_max, &self->fsm);
    FUNC16 (&self->stcp, NN_CTCP_SRC_STCP, ep, &self->fsm);
    FUNC5 (&self->dns, NN_CTCP_SRC_DNS, &self->fsm);

    /*  Start the state machine. */
    FUNC12 (&self->fsm);

    return 0;
}