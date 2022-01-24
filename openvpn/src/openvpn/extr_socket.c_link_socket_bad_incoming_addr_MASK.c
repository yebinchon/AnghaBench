#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct link_socket_info {TYPE_5__* lsa; } ;
struct TYPE_6__ {int sa_family; } ;
struct TYPE_7__ {TYPE_1__ sa; } ;
struct TYPE_8__ {TYPE_2__ addr; } ;
struct link_socket_actual {TYPE_3__ dest; } ;
struct gc_arena {int dummy; } ;
struct buffer {scalar_t__ len; } ;
struct addrinfo {int /*<<< orphan*/  ai_addr; struct addrinfo* ai_next; } ;
struct TYPE_10__ {TYPE_4__* remote_list; } ;
struct TYPE_9__ {struct addrinfo* ai_next; int /*<<< orphan*/  ai_addr; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  D_LINK_ERRORS ; 
 int /*<<< orphan*/  PS_SHOW_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct gc_arena*) ; 
 struct gc_arena FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (struct link_socket_actual const*,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct gc_arena*) ; 

void
FUNC5(struct buffer *buf,
                              const struct link_socket_info *info,
                              const struct link_socket_actual *from_addr)
{
    struct gc_arena gc = FUNC1();
    struct addrinfo *ai;

    switch (from_addr->dest.addr.sa.sa_family)
    {
        case AF_INET:
        case AF_INET6:
            FUNC2(D_LINK_ERRORS,
                "TCP/UDP: Incoming packet rejected from %s[%d], expected peer address: %s (allow this incoming source address/port by removing --remote or adding --float)",
                FUNC3(from_addr, &gc),
                (int)from_addr->dest.addr.sa.sa_family,
                FUNC4(info->lsa->remote_list->ai_addr,":",PS_SHOW_PORT, &gc));
            /* print additional remote addresses */
            for (ai = info->lsa->remote_list->ai_next; ai; ai = ai->ai_next)
            {
                FUNC2(D_LINK_ERRORS,"or from peer address: %s",
                    FUNC4(ai->ai_addr,":",PS_SHOW_PORT, &gc));
            }
            break;
    }
    buf->len = 0;
    FUNC0(&gc);
}