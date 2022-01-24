#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct link_socket_actual {int /*<<< orphan*/  dest; } ;
struct TYPE_6__ {TYPE_2__* lsa; int /*<<< orphan*/  proto; } ;
struct link_socket {TYPE_3__ info; } ;
struct buffer {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dest; } ;
struct TYPE_5__ {TYPE_1__ actual; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct link_socket*,struct buffer*) ; 
 int FUNC3 (struct link_socket*,struct buffer*,struct link_socket_actual*) ; 
 int FUNC4 (struct link_socket*,struct buffer*,struct link_socket_actual*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC7(struct link_socket *sock,
                 struct buffer *buf,
                 struct link_socket_actual *from)
{
    if (FUNC6(sock->info.proto)) /* unified UDPv4 and UDPv6 */
    {
        int res;

#ifdef _WIN32
        res = link_socket_read_udp_win32(sock, buf, from);
#else
        res = FUNC3(sock, buf, from);
#endif
        return res;
    }
    else if (FUNC5(sock->info.proto)) /* unified TCPv4 and TCPv6 */
    {
        /* from address was returned by accept */
        FUNC1(&from->dest, &sock->info.lsa->actual.dest);
        return FUNC2(sock, buf);
    }
    else
    {
        FUNC0(0);
        return -1; /* NOTREACHED */
    }
}