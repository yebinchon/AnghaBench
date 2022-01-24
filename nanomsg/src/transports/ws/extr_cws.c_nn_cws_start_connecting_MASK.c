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
struct sockaddr_storage {scalar_t__ ss_family; } ;
struct sockaddr_in6 {void* sin6_port; } ;
struct sockaddr_in {void* sin_port; } ;
struct sockaddr {int dummy; } ;
struct nn_cws {int /*<<< orphan*/  ep; void* state; int /*<<< orphan*/  usock; int /*<<< orphan*/  retry; int /*<<< orphan*/  remote_port; int /*<<< orphan*/  nic; } ;
typedef  int /*<<< orphan*/  remote ;
typedef  int /*<<< orphan*/  local ;
typedef  int /*<<< orphan*/  ipv4only ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 void* NN_CWS_STATE_CONNECTING ; 
 void* NN_CWS_STATE_WAITING ; 
 int /*<<< orphan*/  NN_IPV4ONLY ; 
 int /*<<< orphan*/  NN_RCVBUF ; 
 int /*<<< orphan*/  NN_SNDBUF ; 
 int /*<<< orphan*/  NN_SOL_SOCKET ; 
 int /*<<< orphan*/  NN_STAT_INPROGRESS_CONNECTIONS ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_RCVBUF ; 
 int /*<<< orphan*/  SO_SNDBUF ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct sockaddr_storage*,size_t*) ; 
 scalar_t__ FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct sockaddr*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct sockaddr*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC13 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14 (struct nn_cws *self,
    struct sockaddr_storage *ss, size_t sslen)
{
    int rc;
    struct sockaddr_storage remote;
    size_t remotelen;
    struct sockaddr_storage local;
    size_t locallen;
    int ipv4only;
    int val;
    size_t sz;

    FUNC1 (&remote, 0, sizeof (remote));
    FUNC1 (&local, 0, sizeof (local));

    /*  Check whether IPv6 is to be used. */
    sz = sizeof (ipv4only);
    FUNC6 (self->ep, NN_SOL_SOCKET, NN_IPV4ONLY, &ipv4only, &sz);
    FUNC2 (sz == sizeof (ipv4only));

    rc = FUNC8 (FUNC4 (&self->nic),
    FUNC5 (&self->nic), ipv4only, &local, &locallen);

    if (FUNC9 (rc < 0)) {
        FUNC3 (&self->retry);
        self->state = NN_CWS_STATE_WAITING;
        return;
    }

    /*  Combine the remote address and the port. */
    remote = *ss;
    remotelen = sslen;
    if (remote.ss_family == AF_INET)
        ((struct sockaddr_in*) &remote)->sin_port = FUNC0 (self->remote_port);
    else if (remote.ss_family == AF_INET6)
        ((struct sockaddr_in6*) &remote)->sin6_port = FUNC0 (self->remote_port);
    else
        FUNC2 (0);

    /*  Try to start the underlying socket. */
    rc = FUNC13 (&self->usock, remote.ss_family, SOCK_STREAM, 0);
    if (FUNC9 (rc < 0)) {
        FUNC3 (&self->retry);
        self->state = NN_CWS_STATE_WAITING;
        return;
    }

    /*  Set the relevant socket options. */
    sz = sizeof (val);
    FUNC6 (self->ep, NN_SOL_SOCKET, NN_SNDBUF, &val, &sz);
    FUNC2 (sz == sizeof (val));
    FUNC12 (&self->usock, SOL_SOCKET, SO_SNDBUF,
        &val, sizeof (val));
    sz = sizeof (val);
    FUNC6 (self->ep, NN_SOL_SOCKET, NN_RCVBUF, &val, &sz);
    FUNC2 (sz == sizeof (val));
    FUNC12 (&self->usock, SOL_SOCKET, SO_RCVBUF,
        &val, sizeof (val));

    /*  Bind the socket to the local network interface. */
    rc = FUNC10 (&self->usock, (struct sockaddr*) &local, locallen);
    if (FUNC9 (rc != 0)) {
        FUNC3 (&self->retry);
        self->state = NN_CWS_STATE_WAITING;
        return;
    }

    /*  Start connecting. */
    FUNC11 (&self->usock, (struct sockaddr*) &remote, remotelen);
    self->state = NN_CWS_STATE_CONNECTING;
    FUNC7 (self->ep, NN_STAT_INPROGRESS_CONNECTIONS, 1);
}