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
struct TYPE_8__ {int n; } ;
struct TYPE_7__ {int /*<<< orphan*/  ping_rec_interval; TYPE_4__ route_wakeup; int /*<<< orphan*/  timeval; int /*<<< orphan*/  route_wakeup_expire; } ;
struct TYPE_6__ {int restart_sleep_seconds; } ;
struct TYPE_5__ {scalar_t__ tuntap; int /*<<< orphan*/  route_list; } ;
struct context {TYPE_3__ c2; TYPE_2__ persist; TYPE_1__ c1; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_ROUTE ; 
 int /*<<< orphan*/  ETT_DEFAULT ; 
 int M_INFO ; 
 int M_NOPREFIX ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  FUNC0 (struct context*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  now ; 
 int /*<<< orphan*/  FUNC5 (struct context*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 () ; 

void
FUNC11(struct context *c)
{
    if (FUNC8(c->c1.route_list, c->c1.tuntap))
    {
        FUNC0(c, false);
    }
    else if (FUNC3(&c->c2.route_wakeup_expire, &c->c2.timeval, ETT_DEFAULT))
    {
        FUNC0(c, true);
    }
    else
    {
        FUNC4(D_ROUTE, "Route: Waiting for TUN/TAP interface to come up...");
        if (c->c1.tuntap)
        {
            if (!FUNC9(c->c1.tuntap))
            {
                FUNC5(c, SIGHUP, "ip-fail");
                c->persist.restart_sleep_seconds = 10;
#ifdef _WIN32
                show_routes(M_INFO|M_NOPREFIX);
                show_adapters(M_INFO|M_NOPREFIX);
#endif
            }
        }
        FUNC10();
        if (c->c2.route_wakeup.n != 1)
        {
            FUNC1(&c->c2.route_wakeup, 1, now);
        }
        FUNC2(&c->c2.ping_rec_interval);
    }
}