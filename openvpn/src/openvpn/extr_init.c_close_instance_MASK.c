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
struct TYPE_2__ {int /*<<< orphan*/  gc; int /*<<< orphan*/  pf; int /*<<< orphan*/  mda_context; int /*<<< orphan*/ * comp_context; } ;
struct context {scalar_t__ mode; TYPE_1__ c2; } ;

/* Variables and functions */
 scalar_t__ CM_CHILD_TCP ; 
 scalar_t__ CM_CHILD_UDP ; 
 scalar_t__ CM_P2P ; 
 scalar_t__ CM_TOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct context*) ; 
 int /*<<< orphan*/  FUNC2 (struct context*) ; 
 int /*<<< orphan*/  FUNC3 (struct context*) ; 
 int /*<<< orphan*/  FUNC4 (struct context*) ; 
 int /*<<< orphan*/  FUNC5 (struct context*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct context*) ; 
 int /*<<< orphan*/  FUNC7 (struct context*) ; 
 int /*<<< orphan*/  FUNC8 (struct context*) ; 
 int /*<<< orphan*/  FUNC9 (struct context*) ; 
 int /*<<< orphan*/  FUNC10 (struct context*) ; 
 int /*<<< orphan*/  FUNC11 (struct context*) ; 
 int /*<<< orphan*/  FUNC12 (struct context*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct context*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ management ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct context*) ; 
 int /*<<< orphan*/  FUNC18 (struct context*) ; 

void
FUNC19(struct context *c)
{
    /* close event objects */
    FUNC2(c);

    if (c->mode == CM_P2P
        || c->mode == CM_CHILD_TCP
        || c->mode == CM_CHILD_UDP
        || c->mode == CM_TOP)
    {
        /* if xinetd/inetd mode, don't allow restart */
        FUNC1(c);

#ifdef USE_COMP
        if (c->c2.comp_context)
        {
            comp_uninit(c->c2.comp_context);
            c->c2.comp_context = NULL;
        }
#endif

        /* free buffers */
        FUNC4(c);

        /* close TLS */
        FUNC11(c);

        /* free key schedules */
        FUNC5(c, (c->mode == CM_P2P || c->mode == CM_TOP));

        FUNC17(c);

        /* close TCP/UDP connection */
        FUNC7(c);

        /* close TUN/TAP device */
        FUNC12(c, false);

#ifdef MANAGEMENT_DEF_AUTH
        if (management)
        {
            management_notify_client_close(management, &c->c2.mda_context, NULL);
        }
#endif

#ifdef ENABLE_PF
        pf_destroy_context(&c->c2.pf);
#endif

#ifdef ENABLE_PLUGIN
        /* call plugin close functions and unload */
        do_close_plugins(c);
#endif

        /* close packet-id persistence file */
        FUNC8(c);

        /* close --status file */
        FUNC10(c);

#ifdef ENABLE_FRAGMENT
        /* close fragmentation handler */
        do_close_fragment(c);
#endif

        /* close --ifconfig-pool-persist obj */
        FUNC6(c);

        /* free up environmental variable store */
        FUNC13(c);

        /* close HTTP or SOCKS proxy */
        FUNC18(c);

        /* garbage collect */
        FUNC14(&c->c2.gc);
    }
}