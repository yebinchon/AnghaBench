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
struct sockaddr {int dummy; } ;
struct nn_usock {int /*<<< orphan*/  s; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  opt ;

/* Variables and functions */
 int /*<<< orphan*/  NN_USOCK_STATE_STARTING ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int FUNC0 (int /*<<< orphan*/ ,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct nn_usock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

int FUNC5 (struct nn_usock *self, const struct sockaddr *addr,
    size_t addrlen)
{
    int rc;
    int opt;

    /*  The socket can be bound only before it's connected. */
    FUNC2 (self, NN_USOCK_STATE_STARTING);

    /*  Windows Subsystem for Linux - SO_REUSEADDR is different,
        and the Windows semantics are very wrong for us. */
#ifndef NN_HAVE_WSL
    /*  Allow re-using the address. */
    opt = 1;
    rc = FUNC4 (self->s, SOL_SOCKET, SO_REUSEADDR, &opt, sizeof (opt));
    FUNC1 (rc == 0);
#endif

    rc = FUNC0 (self->s, addr, (socklen_t) addrlen);
    if (FUNC3 (rc != 0))
        return -errno;

    return 0;
}