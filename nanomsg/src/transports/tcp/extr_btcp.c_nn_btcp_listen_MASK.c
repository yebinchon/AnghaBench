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
typedef  scalar_t__ uint16_t ;
struct sockaddr_storage {int ss_family; } ;
struct sockaddr_in6 {void* sin6_port; } ;
struct sockaddr_in {void* sin_port; } ;
struct sockaddr {int dummy; } ;
struct nn_btcp {int /*<<< orphan*/  usock; int /*<<< orphan*/  ep; } ;
typedef  int /*<<< orphan*/  ss ;
typedef  int /*<<< orphan*/  ipv4only ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int EINVAL ; 
 int /*<<< orphan*/  NN_BTCP_BACKLOG ; 
 int /*<<< orphan*/  NN_IPV4ONLY ; 
 int /*<<< orphan*/  NN_SOL_SOCKET ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct nn_btcp*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,size_t*) ; 
 int FUNC6 (char const*,int,int,struct sockaddr_storage*,size_t*) ; 
 int FUNC7 (char const*,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct sockaddr*,size_t) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (char const*) ; 
 char* FUNC13 (char const*,char) ; 

__attribute__((used)) static int FUNC14 (struct nn_btcp *self)
{
    int rc;
    struct sockaddr_storage ss;
    size_t sslen;
    int ipv4only;
    size_t ipv4onlylen;
    const char *addr;
    const char *end;
    const char *pos;
    uint16_t port;

    /*  First, resolve the IP address. */
    addr = FUNC4 (self->ep);
    FUNC1 (&ss, 0, sizeof (ss));

    /*  Parse the port. */
    end = addr + FUNC12 (addr);
    pos = FUNC13 (addr, ':');
    if (pos == NULL) {
        return -EINVAL;
    }
    ++pos;
    rc = FUNC7 (pos, end - pos);
    if (rc <= 0)
        return rc;
    port = (uint16_t) rc;

    /*  Parse the address. */
    ipv4onlylen = sizeof (ipv4only);
    FUNC5 (self->ep, NN_SOL_SOCKET, NN_IPV4ONLY,
        &ipv4only, &ipv4onlylen);
    FUNC2 (ipv4onlylen == sizeof (ipv4only));
    rc = FUNC6 (addr, pos - addr - 1, ipv4only, &ss, &sslen);
    if (rc < 0) {
        return rc;
    }

    /*  Combine the port and the address. */
    switch (ss.ss_family) {
    case AF_INET:
        ((struct sockaddr_in*) &ss)->sin_port = FUNC0 (port);
        sslen = sizeof (struct sockaddr_in);
        break;
    case AF_INET6:
        ((struct sockaddr_in6*) &ss)->sin6_port = FUNC0 (port);
        sslen = sizeof (struct sockaddr_in6);
        break;
    default:
        FUNC2 (0);
    }

    /*  Start listening for incoming connections. */
    rc = FUNC10 (&self->usock, ss.ss_family, SOCK_STREAM, 0);
    if (rc < 0) {
        return rc;
    }

    rc = FUNC8 (&self->usock, (struct sockaddr*) &ss, (size_t) sslen);
    if (rc < 0) {
       FUNC11 (&self->usock);
       return rc;
    }

    rc = FUNC9 (&self->usock, NN_BTCP_BACKLOG);
    if (rc < 0) {
        FUNC11 (&self->usock);
        return rc;
    }
    FUNC3(self);

    return 0;
}