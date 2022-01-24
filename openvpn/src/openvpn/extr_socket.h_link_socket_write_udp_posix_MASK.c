#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  sa_family; } ;
struct TYPE_5__ {TYPE_4__ sa; } ;
struct TYPE_6__ {TYPE_1__ addr; } ;
struct link_socket_actual {TYPE_2__ dest; } ;
struct TYPE_7__ {int /*<<< orphan*/  proto; } ;
struct link_socket {int sockflags; int /*<<< orphan*/  sd; TYPE_3__ info; } ;
struct buffer {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer*) ; 
 int SF_USE_IP_PKTINFO ; 
 scalar_t__ FUNC2 (struct link_socket_actual*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (struct link_socket*,struct buffer*,struct link_socket_actual*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 size_t FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline size_t
FUNC7(struct link_socket *sock,
                            struct buffer *buf,
                            struct link_socket_actual *to)
{
#if ENABLE_IP_PKTINFO
    if (proto_is_udp(sock->info.proto) && (sock->sockflags & SF_USE_IP_PKTINFO)
        && addr_defined_ipi(to))
    {
        return link_socket_write_udp_posix_sendmsg(sock, buf, to);
    }
    else
#endif
    return FUNC6(sock->sd, FUNC1(buf), FUNC0(buf), 0,
                  (struct sockaddr *) &to->dest.addr.sa,
                  (socklen_t) FUNC3(to->dest.addr.sa.sa_family));
}