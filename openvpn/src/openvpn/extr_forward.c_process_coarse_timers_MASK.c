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
struct TYPE_3__ {scalar_t__ explicit_exit_notification_time_wait; scalar_t__ tls_multi; } ;
struct context {TYPE_1__ c2; TYPE_2__* sig; } ;
struct TYPE_4__ {scalar_t__ signal_received; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct context*) ; 
 int /*<<< orphan*/  FUNC1 (struct context*) ; 
 int /*<<< orphan*/  FUNC2 (struct context*) ; 
 int /*<<< orphan*/  FUNC3 (struct context*) ; 
 int /*<<< orphan*/  FUNC4 (struct context*) ; 
 int /*<<< orphan*/  FUNC5 (struct context*) ; 
 int /*<<< orphan*/  FUNC6 (struct context*) ; 
 int /*<<< orphan*/  FUNC7 (struct context*) ; 
 int /*<<< orphan*/  FUNC8 (struct context*) ; 
 int /*<<< orphan*/  FUNC9 (struct context*) ; 
 int /*<<< orphan*/  FUNC10 (struct context*) ; 
 int /*<<< orphan*/  FUNC11 (struct context*) ; 
 int /*<<< orphan*/  FUNC12 (struct context*) ; 
 int /*<<< orphan*/  FUNC13 (struct context*) ; 

__attribute__((used)) static void
FUNC14(struct context *c)
{
    /* flush current packet-id to file once per 60
    * seconds if --replay-persist was specified */
    FUNC3(c);

    /* should we update status file? */
    FUNC11(c);

    /* process connection establishment items */
    FUNC1(c);

#if P2MP
    /* see if we should send a push_request in response to --pull */
    check_push_request(c);
#endif

#ifdef PLUGIN_PF
    pf_check_reload(c);
#endif

    /* process --route options */
    FUNC0(c);

    /* possibly exit due to --inactive */
    FUNC2(c);
    if (c->sig->signal_received)
    {
        return;
    }

    /* restart if ping not received */
    FUNC4(c);
    if (c->sig->signal_received)
    {
        return;
    }

#if P2MP
    if (c->c2.tls_multi)
    {
        check_server_poll_timeout(c);
        if (c->sig->signal_received)
        {
            return;
        }

        check_scheduled_exit(c);
        if (c->sig->signal_received)
        {
            return;
        }
    }
#endif

#ifdef ENABLE_OCC
    /* Should we send an OCC_REQUEST message? */
    check_send_occ_req(c);

    /* Should we send an MTU load test? */
    check_send_occ_load_test(c);

    /* Should we send an OCC_EXIT message to remote? */
    if (c->c2.explicit_exit_notification_time_wait)
    {
        process_explicit_exit_notification_timer_wakeup(c);
    }
#endif

    /* Should we ping the remote? */
    FUNC5(c);
}