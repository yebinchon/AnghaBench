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
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  D_SYSTEM ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 scalar_t__ FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 () ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  netdata_configured_cache_dir ; 
 int /*<<< orphan*/  netdata_configured_varlib_dir ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 char const* pidfile ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 scalar_t__ FUNC19 (int,char*,int /*<<< orphan*/ ) ; 

int FUNC20(int dont_fork, const char *user)
{
    if(!dont_fork) {
        int i = FUNC6();
        if(i == -1) {
            FUNC13("cannot fork");
            FUNC5(1);
        }
        if(i != 0) {
            FUNC5(0); // the parent
        }

        // become session leader
        if (FUNC15() < 0) {
            FUNC13("Cannot become session leader.");
            FUNC5(2);
        }

        // fork() again
        i = FUNC6();
        if(i == -1) {
            FUNC13("cannot fork");
            FUNC5(1);
        }
        if(i != 0) {
            FUNC5(0); // the parent
        }
    }

    // generate our pid file
    int pidfd = -1;
    if(pidfile[0]) {
        pidfd = FUNC12(pidfile, O_WRONLY | O_CREAT, 0644);
        if(pidfd >= 0) {
            if(FUNC7(pidfd, 0) != 0)
                FUNC4("Cannot truncate pidfile '%s'.", pidfile);

            char b[100];
            FUNC16(b, "%d\n", FUNC9());
            ssize_t i = FUNC19(pidfd, b, FUNC17(b));
            if(i <= 0)
                FUNC4("Cannot write pidfile '%s'.", pidfile);
        }
        else FUNC4("Failed to open pidfile '%s'.", pidfile);
    }

    // Set new file permissions
    FUNC18(0007);

    // adjust my Out-Of-Memory score
    FUNC11();

    // never become a problem
    FUNC14();

    if(user && *user) {
        if(FUNC0(user, pidfd) != 0) {
            FUNC4("Cannot become user '%s'. Continuing as we are.", user);
        }
        else FUNC3(D_SYSTEM, "Successfully became user '%s'.", user);
    }
    else {
        FUNC2(netdata_configured_cache_dir, FUNC10(), FUNC8());
        FUNC2(netdata_configured_varlib_dir, FUNC10(), FUNC8());
    }

    if(pidfd != -1)
        FUNC1(pidfd);

    return(0);
}