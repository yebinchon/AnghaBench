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
struct nn_btcp {int /*<<< orphan*/  listen_error; int /*<<< orphan*/  fsm; int /*<<< orphan*/  usock; int /*<<< orphan*/  atcps; int /*<<< orphan*/ * atcp; int /*<<< orphan*/  state; struct nn_ep* ep; } ;
typedef  int /*<<< orphan*/  ipv4only ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  NN_BTCP_SRC_BTCP ; 
 int /*<<< orphan*/  NN_BTCP_SRC_USOCK ; 
 int /*<<< orphan*/  NN_BTCP_STATE_IDLE ; 
 int /*<<< orphan*/  NN_BTCP_TYPE_LISTEN_ERR ; 
 int /*<<< orphan*/  NN_IPV4ONLY ; 
 int /*<<< orphan*/  NN_SOL_SOCKET ; 
 int /*<<< orphan*/  FUNC0 (struct nn_btcp*) ; 
 struct nn_btcp* FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  nn_btcp_ep_ops ; 
 int /*<<< orphan*/  nn_btcp_handler ; 
 int FUNC3 (struct nn_btcp*) ; 
 int /*<<< orphan*/  nn_btcp_shutdown ; 
 char* FUNC4 (struct nn_ep*) ; 
 int /*<<< orphan*/  FUNC5 (struct nn_ep*) ; 
 int /*<<< orphan*/  FUNC6 (struct nn_ep*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (struct nn_ep*,int /*<<< orphan*/ *,struct nn_btcp*) ; 
 int /*<<< orphan*/  FUNC8 (struct nn_btcp*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (char const*,int,int,struct sockaddr_storage*,size_t*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (char const*,int) ; 
 scalar_t__ FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC18 (char const*) ; 
 char* FUNC19 (char const*,char) ; 

int FUNC20 (struct nn_ep *ep)
{
    int rc;
    struct nn_btcp *self;
    const char *addr;
    const char *end;
    const char *pos;
    struct sockaddr_storage ss;
    size_t sslen;
    int ipv4only;
    size_t ipv4onlylen;

    /*  Allocate the new endpoint object. */
    self = FUNC1 (sizeof (struct nn_btcp), "btcp");
    self->ep = ep;
    FUNC0 (self);

    FUNC7 (ep, &nn_btcp_ep_ops, self);
    addr = FUNC4 (ep);

    /*  Parse the port. */
    end = addr + FUNC18 (addr);
    pos = FUNC19 (addr, ':');
    if (pos == NULL) {
        FUNC8 (self);
        return -EINVAL;
    }
    ++pos;
    rc = FUNC15 (pos, end - pos);
    if (rc < 0) {
        FUNC8 (self);
        return -EINVAL;
    }

    /*  Check whether IPv6 is to be used. */
    ipv4onlylen = sizeof (ipv4only);
    FUNC6 (ep, NN_SOL_SOCKET, NN_IPV4ONLY, &ipv4only, &ipv4onlylen);
    FUNC2 (ipv4onlylen == sizeof (ipv4only));

    /*  Parse the address. */
    rc = FUNC13 (addr, pos - addr - 1, ipv4only, &ss, &sslen);
    if (FUNC16 (rc < 0)) {
        FUNC8 (self);
        return -ENODEV;
    }

    /*  Initialise the structure. */
    FUNC10 (&self->fsm, nn_btcp_handler, nn_btcp_shutdown,
        FUNC5 (ep));
    FUNC9 (&self->listen_error);
    self->state = NN_BTCP_STATE_IDLE;
    self->atcp = NULL;
    FUNC14 (&self->atcps);

    /*  Start the state machine. */
    FUNC12 (&self->fsm);

    FUNC17 (&self->usock, NN_BTCP_SRC_USOCK, &self->fsm);

    rc = FUNC3 (self);
    if (rc != 0) {
        FUNC11 (&self->fsm, &self->listen_error,
            NN_BTCP_SRC_BTCP, NN_BTCP_TYPE_LISTEN_ERR);
        return rc;
    }

    return 0;
}