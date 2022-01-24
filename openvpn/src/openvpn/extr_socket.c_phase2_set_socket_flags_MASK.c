#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  af; } ;
struct link_socket {int /*<<< orphan*/  sd; TYPE_1__ info; int /*<<< orphan*/  mtu_discover_type; int /*<<< orphan*/  sockflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct link_socket *sock)
{
    /* set misc socket parameters */
    FUNC3(sock->sd, sock->sockflags);

    /* set socket to non-blocking mode */
    FUNC1(sock->sd);

    /* set Path MTU discovery options on the socket */
    FUNC0(sock->sd, sock->mtu_discover_type, sock->info.af);

#if EXTENDED_SOCKET_ERROR_CAPABILITY
    /* if the OS supports it, enable extended error passing on the socket */
    set_sock_extended_error_passing(sock->sd);
#endif
}