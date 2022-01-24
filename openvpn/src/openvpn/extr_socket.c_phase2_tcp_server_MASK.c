#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* lsa; } ;
struct link_socket {int mode; TYPE_2__ info; int /*<<< orphan*/  sd; } ;
struct TYPE_3__ {int /*<<< orphan*/  actual; int /*<<< orphan*/  bind_local; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  LS_MODE_DEFAULT 130 
#define  LS_MODE_TCP_ACCEPT_FROM 129 
#define  LS_MODE_TCP_LISTEN 128 
 int SIGTERM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int,int,int volatile*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct link_socket *sock, const char *remote_dynamic,
                  volatile int *signal_received)
{
    switch (sock->mode)
    {
        case LS_MODE_DEFAULT:
            sock->sd = FUNC4(sock->sd,
                                            &sock->info.lsa->actual,
                                            remote_dynamic,
                                            sock->info.lsa->bind_local,
                                            true,
                                            false,
                                            signal_received);
            break;

        case LS_MODE_TCP_LISTEN:
            FUNC3(sock->sd,
                             sock->info.lsa->bind_local,
                             true,
                             false);
            break;

        case LS_MODE_TCP_ACCEPT_FROM:
            sock->sd = FUNC2(sock->sd,
                                        &sock->info.lsa->actual,
                                        false);
            if (!FUNC1(sock->sd))
            {
                *signal_received = SIGTERM;
                return;
            }
            FUNC5(&sock->info.lsa->actual);
            break;

        default:
            FUNC0(0);
    }
}