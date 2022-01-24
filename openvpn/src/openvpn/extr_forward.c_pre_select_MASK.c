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
struct TYPE_5__ {int /*<<< orphan*/  tuntap; } ;
struct TYPE_8__ {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_7__ {TYPE_4__ timeval; } ;
struct context {TYPE_2__* sig; TYPE_1__ c1; TYPE_3__ c2; } ;
struct TYPE_6__ {scalar_t__ signal_received; } ;

/* Variables and functions */
 int BIG_TIMEOUT ; 
 int /*<<< orphan*/  D_TAP_WIN_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct context*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct context*) ; 
 int /*<<< orphan*/  FUNC3 (struct context*) ; 
 int /*<<< orphan*/  FUNC4 (struct context*) ; 
 int /*<<< orphan*/  FUNC5 (struct context*) ; 
 int /*<<< orphan*/  FUNC6 (struct context*) ; 
 int /*<<< orphan*/  FUNC7 (struct context*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

void
FUNC10(struct context *c)
{
    /* make sure current time (now) is updated on function entry */

    /*
     * Start with an effectively infinite timeout, then let it
     * reduce to a timeout that reflects the component which
     * needs the earliest service.
     */
    c->c2.timeval.tv_sec = BIG_TIMEOUT;
    c->c2.timeval.tv_usec = 0;

#if defined(_WIN32)
    if (check_debug_level(D_TAP_WIN_DEBUG))
    {
        c->c2.timeval.tv_sec = 1;
        if (tuntap_defined(c->c1.tuntap))
        {
            tun_show_debug(c->c1.tuntap);
        }
    }
#endif

    /* check coarse timers? */
    FUNC0(c);
    if (c->sig->signal_received)
    {
        return;
    }

    /* Does TLS need service? */
    FUNC6(c);

    /* In certain cases, TLS errors will require a restart */
    FUNC7(c);
    if (c->sig->signal_received)
    {
        return;
    }

    /* check for incoming configuration info on the control channel */
    FUNC3(c);

#ifdef ENABLE_OCC
    /* Should we send an OCC message? */
    check_send_occ_msg(c);
#endif

#ifdef ENABLE_FRAGMENT
    /* Should we deliver a datagram fragment to remote? */
    check_fragment(c);
#endif

    /* Update random component of timeout */
    FUNC5(c);
}