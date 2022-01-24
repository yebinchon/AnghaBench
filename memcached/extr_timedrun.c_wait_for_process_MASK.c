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
struct sigaction {scalar_t__ sa_flags; int /*<<< orphan*/  sa_handler; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int EX_SOFTWARE ; 
 int SIGALRM ; 
 int SIGHUP ; 
 int SIGINT ; 
 int SIGKILL ; 
 int SIGPIPE ; 
 int SIGTERM ; 
 int SIGUSR1 ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int caught_sig ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  signal_handler ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC8 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(pid_t pid)
{
    int rv = EX_SOFTWARE;
    int status = 0;
    int i = 0;
    struct sigaction sig_handler;

    sig_handler.sa_handler = signal_handler;
    sig_handler.sa_flags = 0;

    FUNC7(SIGALRM, &sig_handler, NULL);
    FUNC7(SIGHUP, &sig_handler, NULL);
    FUNC7(SIGINT, &sig_handler, NULL);
    FUNC7(SIGUSR1, &sig_handler, NULL);
    FUNC7(SIGTERM, &sig_handler, NULL);
    FUNC7(SIGPIPE, &sig_handler, NULL);

    /* Loop forever waiting for the process to quit */
    for (i = 0; ;i++) {
        pid_t p = FUNC8(pid, &status, 0);
        if (p == pid) {
            /* child exited.  Let's get out of here */
            rv = FUNC1(status) ?
                FUNC0(status) :
                (0x80 | FUNC2(status));
            break;
        } else {
            int sig = 0;
            switch (i) {
            case 0:
                /* On the first iteration, pass the signal through */
                sig = caught_sig > 0 ? caught_sig : SIGTERM;
                if (caught_sig == SIGALRM) {
                   FUNC4(stderr, "Timeout.. killing the process\n");
                }
                break;
            case 1:
                sig = SIGTERM;
                break;
            default:
                sig = SIGKILL;
                break;
            }
            if (FUNC5(pid, sig) < 0) {
                /* Kill failed.  Must have lost the process. :/ */
                FUNC6("lost child when trying to kill");
            }
            /* Wait up to 5 seconds for the pid */
            FUNC3(5);
        }
    }
    return rv;
}