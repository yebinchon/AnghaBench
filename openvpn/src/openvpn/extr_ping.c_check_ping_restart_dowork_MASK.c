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
struct gc_arena {int dummy; } ;
struct TYPE_3__ {int ping_rec_timeout_action; } ;
struct context {TYPE_2__* sig; TYPE_1__ options; } ;
struct TYPE_4__ {char* signal_text; int /*<<< orphan*/  signal_received; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_INFO ; 
#define  PING_EXIT 129 
#define  PING_RESTART 128 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  FUNC1 (struct context*,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC2 (struct gc_arena*) ; 
 struct gc_arena FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void
FUNC5(struct context *c)
{
    struct gc_arena gc = FUNC3();
    switch (c->options.ping_rec_timeout_action)
    {
        case PING_EXIT:
            FUNC4(M_INFO, "%sInactivity timeout (--ping-exit), exiting",
                FUNC1(c, &gc));
            c->sig->signal_received = SIGTERM;
            c->sig->signal_text = "ping-exit";
            break;

        case PING_RESTART:
            FUNC4(M_INFO, "%sInactivity timeout (--ping-restart), restarting",
                FUNC1(c, &gc));
            c->sig->signal_received = SIGUSR1; /* SOFT-SIGUSR1 -- Ping Restart */
            c->sig->signal_text = "ping-restart";
            break;

        default:
            FUNC0(0);
    }
    FUNC2(&gc);
}