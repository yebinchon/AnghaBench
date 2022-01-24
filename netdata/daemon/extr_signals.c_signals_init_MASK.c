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
struct sigaction {int /*<<< orphan*/  sa_handler; int /*<<< orphan*/  sa_mask; scalar_t__ sa_flags; } ;
struct TYPE_2__ {int action; int /*<<< orphan*/  name; int /*<<< orphan*/  signo; } ;

/* Variables and functions */
#define  NETDATA_SIGNAL_CHILD 129 
 int NETDATA_SIGNAL_END_OF_LIST ; 
#define  NETDATA_SIGNAL_IGNORE 128 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int reaper_enabled ; 
 int FUNC4 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  signal_handler ; 
 TYPE_1__* signals_waiting ; 

void FUNC6(void) {
    // Catch signals which we want to use
    struct sigaction sa;
    sa.sa_flags = 0;

    // Enable process tracking / reaper if running as init (pid == 1).
    // This prevents zombie processes when running in a container.
    if (FUNC1() == 1) {
        FUNC2("SIGNAL: Enabling reaper");
        FUNC3();
        reaper_enabled = 1;
    } else {
        FUNC2("SIGNAL: Not enabling reaper");
    }

    // ignore all signals while we run in a signal handler
    FUNC5(&sa.sa_mask);

    int i;
    for (i = 0; signals_waiting[i].action != NETDATA_SIGNAL_END_OF_LIST; i++) {
        switch (signals_waiting[i].action) {
        case NETDATA_SIGNAL_IGNORE:
            sa.sa_handler = SIG_IGN;
            break;
        case NETDATA_SIGNAL_CHILD:
            if (reaper_enabled == 0)
                continue;
            // FALLTHROUGH
        default:
            sa.sa_handler = signal_handler;
            break;
        }

        if(FUNC4(signals_waiting[i].signo, &sa, NULL) == -1)
            FUNC0("SIGNAL: Failed to change signal handler for: %s", signals_waiting[i].name);
    }
}