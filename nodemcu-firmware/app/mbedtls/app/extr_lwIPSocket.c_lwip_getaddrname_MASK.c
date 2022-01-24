#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8_t ;
struct sockaddr_in {int sin_len; int /*<<< orphan*/  sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
typedef  int sockaddr ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  sin ;
struct TYPE_3__ {int /*<<< orphan*/  conn; } ;
typedef  TYPE_1__ lwIP_sock ;
typedef  int /*<<< orphan*/  ip_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int*,struct sockaddr_in*,int) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(int s, struct sockaddr *name, socklen_t *namelen, u8_t local)
{
    lwIP_sock *sock = NULL;
    struct sockaddr_in sin;
    ip_addr_t naddr;
    FUNC4(name);
    FUNC4(namelen);

    sock = FUNC1(s);
    if (!sock)
    {
        return -1;
    }

    FUNC6(&sin, 0, sizeof(sin));
    sin.sin_len = sizeof(sin);
    sin.sin_family = AF_INET;

    /* get the IP address and port */
    FUNC5(sock->conn, &naddr, &sin.sin_port, local);
    sin.sin_port = FUNC2(sin.sin_port);
    FUNC3(&sin.sin_addr, &naddr);

    if (*namelen > sizeof(sin))
    {
        *namelen = sizeof(sin);
    }

    FUNC0(name, &sin, *namelen);

    return 0;
}