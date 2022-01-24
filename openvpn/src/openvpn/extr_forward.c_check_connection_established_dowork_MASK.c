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
struct TYPE_4__ {int /*<<< orphan*/  wait_for_connect; int /*<<< orphan*/  push_request_interval; scalar_t__ tls_multi; int /*<<< orphan*/  timeval; } ;
struct TYPE_3__ {scalar_t__ pull; } ;
struct context {TYPE_2__ c2; TYPE_1__ options; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct context*) ; 
 int /*<<< orphan*/  ETT_DEFAULT ; 
 int /*<<< orphan*/  OPENVPN_STATE_GET_CONFIG ; 
 int /*<<< orphan*/  FUNC1 (struct context*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ management ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  now ; 
 int /*<<< orphan*/  FUNC6 (struct context*) ; 

void
FUNC7(struct context *c)
{
    if (FUNC4(&c->c2.wait_for_connect, &c->c2.timeval, ETT_DEFAULT))
    {
        if (FUNC0(c))
        {
#if P2MP
            /* if --pull was specified, send a push request to server */
            if (c->c2.tls_multi && c->options.pull)
            {
#ifdef ENABLE_MANAGEMENT
                if (management)
                {
                    management_set_state(management,
                                         OPENVPN_STATE_GET_CONFIG,
                                         NULL,
                                         NULL,
                                         NULL,
                                         NULL,
                                         NULL);
                }
#endif
                /* fire up push request right away (already 1s delayed) */
                event_timeout_init(&c->c2.push_request_interval, 0, now);
                reset_coarse_timers(c);
            }
            else
#endif /* if P2MP */
            {
                FUNC1(c, false, 0);
            }

            FUNC2(&c->c2.wait_for_connect);
        }
    }
}