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
struct TYPE_2__ {scalar_t__ event_set_status; } ;
struct context {TYPE_1__ c2; int /*<<< orphan*/  es; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CC_HARD_USR1_TO_HUP ; 
 int /*<<< orphan*/  CM_P2P ; 
 scalar_t__ ES_TIMEOUT ; 
 scalar_t__ FUNC0 (struct context*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  PERF_EVENT_LOOP ; 
 int /*<<< orphan*/  FUNC2 (struct context*) ; 
 int /*<<< orphan*/  FUNC3 (struct context*) ; 
 int /*<<< orphan*/  FUNC4 (struct context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct context*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct context*) ; 
 int /*<<< orphan*/  FUNC10 (struct context*) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static void
FUNC12(struct context *c)
{
    FUNC3(c);

    /* set point-to-point mode */
    c->mode = CM_P2P;

    /* initialize tunnel instance */
    FUNC4(c, c->es, CC_HARD_USR1_TO_HUP);
    if (FUNC0(c))
    {
        return;
    }

    /* main event loop */
    while (true)
    {
        FUNC8(PERF_EVENT_LOOP);

        /* process timers, TLS, etc. */
        FUNC9(c);
        FUNC1();

        /* set up and do the I/O wait */
        FUNC5(c, FUNC6(c));
        FUNC1();

        /* timeout? */
        if (c->c2.event_set_status == ES_TIMEOUT)
        {
            FUNC7();
            continue;
        }

        /* process the I/O which triggered select */
        FUNC10(c);
        FUNC1();

        FUNC7();
    }

    FUNC11();

    /* tear down tunnel instance (unless --persist-tun) */
    FUNC2(c);
}