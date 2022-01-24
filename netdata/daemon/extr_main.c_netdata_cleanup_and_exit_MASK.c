#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__* pidfile ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*) ; 
 scalar_t__ FUNC9 (scalar_t__*) ; 

void FUNC10(int ret) {
    // enabling this, is wrong
    // because the threads will be cancelled while cleaning up
    // netdata_exit = 1;

    FUNC2();
    FUNC4("EXIT: netdata prepares to exit with code %d...", ret);

    FUNC8("EXIT", ret?"ERROR":"OK","-");

    // cleanup/save the database and exit
    FUNC4("EXIT: cleaning up the database...");
    FUNC5();

    if(!ret) {
        // exit cleanly

        // stop everything
        FUNC4("EXIT: stopping master threads...");
        FUNC0();

        // free the database
        FUNC4("EXIT: freeing database memory...");
        FUNC6();
    }

    // unlink the pid
    if(pidfile[0]) {
        FUNC4("EXIT: removing netdata PID file '%s'...", pidfile);
        if(FUNC9(pidfile) != 0)
            FUNC1("EXIT: cannot unlink pidfile '%s'.", pidfile);
    }

#ifdef ENABLE_HTTPS
    security_clean_openssl();
#endif

    FUNC4("EXIT: all done - netdata is now exiting - bye bye...");
    FUNC3(ret);
}