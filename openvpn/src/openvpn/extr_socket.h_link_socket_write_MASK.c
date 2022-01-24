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
struct link_socket_actual {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  proto; } ;
struct link_socket {TYPE_1__ info; } ;
struct buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct link_socket*,struct buffer*,struct link_socket_actual*) ; 
 int FUNC2 (struct link_socket*,struct buffer*,struct link_socket_actual*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC5(struct link_socket *sock,
                  struct buffer *buf,
                  struct link_socket_actual *to)
{
    if (FUNC4(sock->info.proto)) /* unified UDPv4 and UDPv6 */
    {
        return FUNC2(sock, buf, to);
    }
    else if (FUNC3(sock->info.proto)) /* unified TCPv4 and TCPv6 */
    {
        return FUNC1(sock, buf, to);
    }
    else
    {
        FUNC0(0);
        return -1; /* NOTREACHED */
    }
}