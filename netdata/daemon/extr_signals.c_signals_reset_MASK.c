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
struct sigaction {scalar_t__ sa_flags; int /*<<< orphan*/  sa_handler; int /*<<< orphan*/  sa_mask; } ;
struct TYPE_2__ {scalar_t__ action; int /*<<< orphan*/  name; int /*<<< orphan*/  signo; } ;

/* Variables and functions */
 scalar_t__ NETDATA_SIGNAL_END_OF_LIST ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int reaper_enabled ; 
 int FUNC2 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* signals_waiting ; 

void FUNC4(void) {
    struct sigaction sa;
    FUNC3(&sa.sa_mask);
    sa.sa_handler = SIG_DFL;
    sa.sa_flags = 0;

    int i;
    for (i = 0; signals_waiting[i].action != NETDATA_SIGNAL_END_OF_LIST; i++) {
        if(FUNC2(signals_waiting[i].signo, &sa, NULL) == -1)
            FUNC0("SIGNAL: Failed to reset signal handler for: %s", signals_waiting[i].name);
    }

    if (reaper_enabled == 1)
        FUNC1();
}