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
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  LOG_DAEMON ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  LOG_PID ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIG_DFL ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__* FUNC8 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__*) ; 
 int multi ; 
 int /*<<< orphan*/  noteterm ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  prog ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 long FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,...) ; 
 long termsig ; 
 scalar_t__ FUNC18 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC19(void)
{
    pid_t *kidpids = NULL;
    int status;
    int procs = 0;
    int i;

    FUNC12(prog, LOG_PID, LOG_DAEMON);

    if (FUNC13(0, 0)) {
        FUNC17(LOG_ERR, "fatal: error detaching from parent process group: %s",
               FUNC16(errno));
        FUNC9(1);
    }
    kidpids = FUNC8(multi * sizeof(*kidpids), "child PID array");
    for (i = 0; i < multi; ++i)
        kidpids[i] = 0;

    FUNC14(SIGINT, noteterm);
    FUNC14(SIGTERM, noteterm);

    while (termsig == 0) {
        pid_t fpid;

        /*
         * Wait for a child to replace when we're at the limit.
         * Slow down if a child exited abnormally or waitpid() < 0
         */
        while (termsig == 0 && procs >= multi) {
            if ((fpid = FUNC18(-1, &status, 0)) > 0) {
                for (i = 0; i < procs; ++i) {
                    if (kidpids[i] == fpid) {
                        kidpids[i] = 0;
                        --procs;
                        break;
                    }
                }
                if (i >= multi) {
                    FUNC17(LOG_ERR, "fatal: internal error: "
                           "no matching child slot for pid: %ld",
                           (long) fpid);
                    FUNC11(1, kidpids);
                }
                if (status != 0) {
                    if (FUNC4(status))
                        FUNC17(LOG_WARNING, "child process: %ld, exit status: %d",
                               (long)fpid, FUNC3(status));
                    else if (FUNC5(status))
                        FUNC17(LOG_WARNING, "child process: %ld, term signal %d%s",
                               (long)fpid, FUNC6(status),
#ifdef WCOREDUMP
                               WCOREDUMP(status) ? " (core dumped)" :
#endif
                               "");
                    FUNC15(1);
                }
                break;
            } else if (errno != EINTR) {
                FUNC17(LOG_ERR, "fatal: waitpid(): %s", FUNC16(errno));
                FUNC11(1, kidpids);
            }
        }
        if (termsig)
            break;

        switch(fpid = FUNC10()) {
        case -1:            /* error */
            /* System critically low on memory, pause and try again later */
            FUNC15(30);
            break;
        case 0:             /* child */
            FUNC0(kidpids);
            FUNC14(SIGINT, SIG_DFL);
            FUNC14(SIGTERM, SIG_DFL);
            if (termsig)
                FUNC7(0);
            if (FUNC1() <= 0) {
                FUNC17(LOG_ERR, "fatal: RAND_poll() failed");
                FUNC7(1);
            }
            return;
        default:            /* parent */
            for (i = 0; i < multi; ++i) {
                if (kidpids[i] == 0) {
                    kidpids[i] = fpid;
                    procs++;
                    break;
                }
            }
            if (i >= multi) {
                FUNC17(LOG_ERR, "fatal: internal error: no free child slots");
                FUNC11(1, kidpids);
            }
            break;
        }
    }

    /* The loop above can only break on termsig */
    FUNC17(LOG_INFO, "terminating on signal: %d", termsig);
    FUNC11(0, kidpids);
}