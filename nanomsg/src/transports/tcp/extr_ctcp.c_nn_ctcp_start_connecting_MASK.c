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
typedef  int /*<<< orphan*/  val ;
typedef  int uint16_t ;
struct sockaddr_storage {scalar_t__ ss_family; } ;
struct sockaddr_in6 {void* sin6_port; } ;
struct sockaddr_in {void* sin_port; } ;
struct sockaddr {int dummy; } ;
struct nn_ctcp {int /*<<< orphan*/  ep; void* state; int /*<<< orphan*/  usock; int /*<<< orphan*/  retry; } ;
typedef  int /*<<< orphan*/  remote ;
typedef  int /*<<< orphan*/  local ;
typedef  int /*<<< orphan*/  ipv4only ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 void* NN_CTCP_STATE_CONNECTING ; 
 void* NN_CTCP_STATE_WAITING ; 
 int /*<<< orphan*/  NN_IPV4ONLY ; 
 int /*<<< orphan*/  NN_RCVBUF ; 
 int /*<<< orphan*/  NN_SNDBUF ; 
 int /*<<< orphan*/  NN_SOL_SOCKET ; 
 int /*<<< orphan*/  NN_STAT_INPROGRESS_CONNECTIONS ; 
 int /*<<< orphan*/  NN_TCP ; 
 int /*<<< orphan*/  NN_TCP_NODELAY ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_RCVBUF ; 
 int /*<<< orphan*/  SO_SNDBUF ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (char const*,int,int,struct sockaddr_storage*,size_t*) ; 
 int FUNC9 (char const*,int) ; 
 scalar_t__ FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct sockaddr*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct sockaddr*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC14 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC15 (char const*,char) ; 
 int FUNC16 (char const*) ; 
 char* FUNC17 (char const*,char) ; 

__attribute__((used)) static void FUNC18 (struct nn_ctcp *self,
    struct sockaddr_storage *ss, size_t sslen)
{
    int rc;
    struct sockaddr_storage remote;
    size_t remotelen;
    struct sockaddr_storage local;
    size_t locallen;
    const char *addr;
    const char *end;
    const char *colon;
    const char *semicolon;
    uint16_t port;
    int ipv4only;
    size_t ipv4onlylen;
    int val;
    size_t sz;

    /*  Create IP address from the address string. */
    addr = FUNC5 (self->ep);
    FUNC2 (&remote, 0, sizeof (remote));

    /*  Parse the port. */
    end = addr + FUNC16 (addr);
    colon = FUNC17 (addr, ':');
    rc = FUNC9 (colon + 1, end - colon - 1);
    FUNC0 (rc > 0, -rc);
    port = rc;

    /*  Check whether IPv6 is to be used. */
    ipv4onlylen = sizeof (ipv4only);
    FUNC6 (self->ep, NN_SOL_SOCKET, NN_IPV4ONLY,
        &ipv4only, &ipv4onlylen);
    FUNC3 (ipv4onlylen == sizeof (ipv4only));

    /*  Parse the local address, if any. */
    semicolon = FUNC15 (addr, ';');
    FUNC2 (&local, 0, sizeof (local));
    if (semicolon)
        rc = FUNC8 (addr, semicolon - addr, ipv4only,
            &local, &locallen);
    else
        rc = FUNC8 ("*", 1, ipv4only, &local, &locallen);
    if (FUNC10 (rc < 0)) {
        FUNC4 (&self->retry);
        self->state = NN_CTCP_STATE_WAITING;
        return;
    }

    /*  Combine the remote address and the port. */
    remote = *ss;
    remotelen = sslen;
    if (remote.ss_family == AF_INET)
        ((struct sockaddr_in*) &remote)->sin_port = FUNC1 (port);
    else if (remote.ss_family == AF_INET6)
        ((struct sockaddr_in6*) &remote)->sin6_port = FUNC1 (port);
    else
        FUNC3 (0);

    /*  Try to start the underlying socket. */
    rc = FUNC14 (&self->usock, remote.ss_family, SOCK_STREAM, 0);
    if (FUNC10 (rc < 0)) {
        FUNC4 (&self->retry);
        self->state = NN_CTCP_STATE_WAITING;
        return;
    }

    /*  Set the relevant socket options. */
    sz = sizeof (val);
    FUNC6 (self->ep, NN_SOL_SOCKET, NN_SNDBUF, &val, &sz);
    FUNC3 (sz == sizeof (val));
    FUNC13 (&self->usock, SOL_SOCKET, SO_SNDBUF,
        &val, sizeof (val));
    sz = sizeof (val);
    FUNC6 (self->ep, NN_SOL_SOCKET, NN_RCVBUF, &val, &sz);
    FUNC3 (sz == sizeof (val));
    FUNC13 (&self->usock, SOL_SOCKET, SO_RCVBUF,
        &val, sizeof (val));
    sz = sizeof (val);
    FUNC6 (self->ep, NN_TCP, NN_TCP_NODELAY, &val, &sz);
    FUNC3 (sz == sizeof (val));
    FUNC13 (&self->usock, IPPROTO_TCP, TCP_NODELAY,
        &val, sizeof (val));

    /*  Bind the socket to the local network interface. */
    rc = FUNC11 (&self->usock, (struct sockaddr*) &local, locallen);
    if (FUNC10 (rc != 0)) {
        FUNC4 (&self->retry);
        self->state = NN_CTCP_STATE_WAITING;
        return;
    }

    /*  Start connecting. */
    FUNC12 (&self->usock, (struct sockaddr*) &remote, remotelen);
    self->state = NN_CTCP_STATE_CONNECTING;
    FUNC7 (self->ep, NN_STAT_INPROGRESS_CONNECTIONS, 1);
}