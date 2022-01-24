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
typedef  char uint8_t ;
struct sockaddr_storage {int dummy; } ;
struct nn_ep {int dummy; } ;
struct nn_cws {int remote_hostname_len; int remote_port; char msg_type; int /*<<< orphan*/  fsm; int /*<<< orphan*/  dns; int /*<<< orphan*/  sws; int /*<<< orphan*/  retry; int /*<<< orphan*/  usock; int /*<<< orphan*/  state; int /*<<< orphan*/  resource; int /*<<< orphan*/  nic; int /*<<< orphan*/  remote_host; scalar_t__ peer_gone; struct nn_ep* ep; } ;
typedef  int /*<<< orphan*/  reconnect_ivl_max ;
typedef  int /*<<< orphan*/  reconnect_ivl ;
typedef  int /*<<< orphan*/  msg_type ;
typedef  int /*<<< orphan*/  ipv4only ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  NN_CWS_SRC_DNS ; 
 int /*<<< orphan*/  NN_CWS_SRC_RECONNECT_TIMER ; 
 int /*<<< orphan*/  NN_CWS_SRC_SWS ; 
 int /*<<< orphan*/  NN_CWS_SRC_USOCK ; 
 int /*<<< orphan*/  NN_CWS_STATE_IDLE ; 
 int /*<<< orphan*/  NN_IPV4ONLY ; 
 int /*<<< orphan*/  NN_RECONNECT_IVL ; 
 int /*<<< orphan*/  NN_RECONNECT_IVL_MAX ; 
 int /*<<< orphan*/  NN_SOL_SOCKET ; 
 int /*<<< orphan*/  NN_WS ; 
 int /*<<< orphan*/  NN_WS_MSG_TYPE ; 
 int /*<<< orphan*/  FUNC0 (struct nn_cws*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char const*,int) ; 
 struct nn_cws* FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  nn_cws_ep_ops ; 
 int /*<<< orphan*/  nn_cws_handler ; 
 int /*<<< orphan*/  nn_cws_shutdown ; 
 scalar_t__ FUNC7 (char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC9 (struct nn_ep*) ; 
 int /*<<< orphan*/  FUNC10 (struct nn_ep*) ; 
 int /*<<< orphan*/  FUNC11 (struct nn_ep*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,size_t*) ; 
 int /*<<< orphan*/  FUNC12 (struct nn_ep*,int /*<<< orphan*/ *,struct nn_cws*) ; 
 int /*<<< orphan*/  FUNC13 (struct nn_cws*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (char const*,int,int,struct sockaddr_storage*,size_t*) ; 
 scalar_t__ FUNC17 (char const*,int,int,struct sockaddr_storage*,size_t*) ; 
 int FUNC18 (char const*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nn_ep*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC21 (char const*,char) ; 
 size_t FUNC22 (char const*) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__,char const*,int) ; 
 char* FUNC24 (char const*,char) ; 

int FUNC25 (struct nn_ep *ep)
{
    int rc;
    const char *addr;
    size_t addrlen;
    const char *semicolon;
    const char *hostname;
    size_t hostlen;
    const char *colon;
    const char *slash;
    const char *resource;
    size_t resourcelen;
    struct sockaddr_storage ss;
    size_t sslen;
    int ipv4only;
    size_t ipv4onlylen;
    struct nn_cws *self;
    int reconnect_ivl;
    int reconnect_ivl_max;
    int msg_type;
    size_t sz;

    /*  Allocate the new endpoint object. */
    self = FUNC2 (sizeof (struct nn_cws), "cws");
    FUNC0 (self);
    self->ep = ep;
    self->peer_gone = 0;

    /*  Initalise the endpoint. */
    FUNC12 (ep, &nn_cws_ep_ops, self);

    /*  Check whether IPv6 is to be used. */
    ipv4onlylen = sizeof (ipv4only);
    FUNC11 (ep, NN_SOL_SOCKET, NN_IPV4ONLY, &ipv4only, &ipv4onlylen);
    FUNC3 (ipv4onlylen == sizeof (ipv4only));

    /*  Start parsing the address. */
    addr = FUNC9 (ep);
    addrlen = FUNC22 (addr);
    semicolon = FUNC21 (addr, ';');
    hostname = semicolon ? semicolon + 1 : addr;
    colon = FUNC24 (addr, ':');
    slash = colon ? FUNC21 (colon, '/') : FUNC21 (addr, '/');
    resource = slash ? slash : addr + addrlen;
    self->remote_hostname_len = colon ? colon - hostname : resource - hostname;

    /*  Host contains both hostname and port. */
    hostlen = resource - hostname;

    /*  Parse the port; assume port 80 if not explicitly declared. */
    if (colon != NULL) {
        rc = FUNC18 (colon + 1, resource - colon - 1);
        if (rc < 0) {
            FUNC13(self);
            return -EINVAL;
        }
        self->remote_port = rc;
    }
    else {
        self->remote_port = 80;
    }

    /*  Check whether the host portion of the address is either a literal
        or a valid hostname. */
    if (FUNC7 (hostname, self->remote_hostname_len) < 0 &&
          FUNC17 (hostname, self->remote_hostname_len, ipv4only,
          &ss, &sslen) < 0) {
        FUNC13(self);
        return -EINVAL;
    }

    /*  If local address is specified, check whether it is valid. */
    if (semicolon) {
        rc = FUNC16 (addr, semicolon - addr, ipv4only, &ss, &sslen);
        if (rc < 0) {
            FUNC13(self);
            return -ENODEV;
        }
    }

    /*  At this point, the address is valid, so begin allocating resources. */
    FUNC6 (&self->remote_host, hostlen + 1);
    FUNC1 (FUNC5 (&self->remote_host), hostname, hostlen);
    ((uint8_t *) FUNC5 (&self->remote_host)) [hostlen] = '\0';

    if (semicolon) {
        FUNC6 (&self->nic, semicolon - addr);
        FUNC1 (FUNC5 (&self->nic),
            addr, semicolon - addr);
    }
    else {
        FUNC6 (&self->nic, 1);
        FUNC1 (FUNC5 (&self->nic), "*", 1);
    }

    /*  The requested resource is used in opening handshake. */
    resourcelen = FUNC22 (resource);
    if (resourcelen) {
        FUNC6 (&self->resource, resourcelen + 1);
        FUNC23 (FUNC5 (&self->resource),
            resource, resourcelen + 1);
    }
    else {
        /*  No resource specified, so allocate base path. */
        FUNC6 (&self->resource, 2);
        FUNC23 (FUNC5 (&self->resource), "/", 2);
    }

    /*  Initialise the structure. */
    FUNC14 (&self->fsm, nn_cws_handler, nn_cws_shutdown,
        FUNC10 (ep));
    self->state = NN_CWS_STATE_IDLE;
    FUNC20 (&self->usock, NN_CWS_SRC_USOCK, &self->fsm);

    sz = sizeof (msg_type);
    FUNC11 (ep, NN_WS, NN_WS_MSG_TYPE, &msg_type, &sz);
    FUNC3 (sz == sizeof (msg_type));
    self->msg_type = (uint8_t) msg_type;

    sz = sizeof (reconnect_ivl);
    FUNC11 (ep, NN_SOL_SOCKET, NN_RECONNECT_IVL, &reconnect_ivl, &sz);
    FUNC3 (sz == sizeof (reconnect_ivl));
    sz = sizeof (reconnect_ivl_max);
    FUNC11 (ep, NN_SOL_SOCKET, NN_RECONNECT_IVL_MAX,
        &reconnect_ivl_max, &sz);
    FUNC3 (sz == sizeof (reconnect_ivl_max));
    if (reconnect_ivl_max == 0)
        reconnect_ivl_max = reconnect_ivl;
    FUNC4 (&self->retry, NN_CWS_SRC_RECONNECT_TIMER,
        reconnect_ivl, reconnect_ivl_max, &self->fsm);

    FUNC19 (&self->sws, NN_CWS_SRC_SWS, ep, &self->fsm);
    FUNC8 (&self->dns, NN_CWS_SRC_DNS, &self->fsm);

    /*  Start the state machine. */
    FUNC15 (&self->fsm);

    return 0;
}