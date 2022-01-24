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
struct TYPE_2__ {int action; char* name; scalar_t__ count; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_CHILDS ; 
 scalar_t__ EINTR ; 
#define  NETDATA_SIGNAL_CHILD 133 
 int NETDATA_SIGNAL_END_OF_LIST ; 
#define  NETDATA_SIGNAL_EXIT_CLEANLY 132 
#define  NETDATA_SIGNAL_FATAL 131 
#define  NETDATA_SIGNAL_LOG_ROTATE 130 
#define  NETDATA_SIGNAL_RELOAD_HEALTH 129 
#define  NETDATA_SIGNAL_SAVE_DATABASE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 TYPE_1__* signals_waiting ; 

void FUNC13(void) {
    while(1) {

        // pause()  causes  the calling process (or thread) to sleep until a signal
        // is delivered that either terminates the process or causes the invocation
        // of a signal-catching function.
        if(FUNC9() == -1 && errno == EINTR) {

            // loop once, but keep looping while signals are coming in
            // this is needed because a few operations may take some time
            // so we need to check for new signals before pausing again
            int found = 1;
            while(found) {
                found = 0;

                // execute the actions of the signals
                int i;
                for (i = 0; signals_waiting[i].action != NETDATA_SIGNAL_END_OF_LIST; i++) {
                    if (signals_waiting[i].count) {
                        found = 1;
                        signals_waiting[i].count = 0;
                        const char *name = signals_waiting[i].name;

                        switch (signals_waiting[i].action) {
                            case NETDATA_SIGNAL_RELOAD_HEALTH:
                                FUNC3();
                                FUNC7("SIGNAL: Received %s. Reloading HEALTH configuration...", name);
                                FUNC6();
                                FUNC2();
                                break;

                            case NETDATA_SIGNAL_SAVE_DATABASE:
                                FUNC3();
                                FUNC7("SIGNAL: Received %s. Saving databases...", name);
                                FUNC12();
                                FUNC7("Databases saved.");
                                FUNC2();
                                break;

                            case NETDATA_SIGNAL_LOG_ROTATE:
                                FUNC3();
                                FUNC7("SIGNAL: Received %s. Reopening all log files...", name);
                                FUNC11();
                                FUNC2();
                                break;

                            case NETDATA_SIGNAL_EXIT_CLEANLY:
                                FUNC3();
                                FUNC7("SIGNAL: Received %s. Cleaning up to exit...", name);
                                FUNC8(0);
                                FUNC4(0);

                            case NETDATA_SIGNAL_FATAL:
                                FUNC5("SIGNAL: Received %s. netdata now exits.", name);

                            case NETDATA_SIGNAL_CHILD:
                                FUNC0(D_CHILDS, "SIGNAL: Received %s. Reaping...", name);
                                FUNC10();
                                break;

                            default:
                                FUNC7("SIGNAL: Received %s. No signal handler configured. Ignoring it.", name);
                                break;
                        }
                    }
                }
            }
        }
        else
            FUNC1("SIGNAL: pause() returned but it was not interrupted by a signal.");
    }
}