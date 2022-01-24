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
struct rlimit {int rlim_max; } ;
typedef  int /*<<< orphan*/  conn ;
struct TYPE_2__ {int maxconns; } ;

/* Variables and functions */
 int /*<<< orphan*/  RLIMIT_NOFILE ; 
 int /*<<< orphan*/ * FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * conns ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int max_fds ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 TYPE_1__ settings ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC7(void) {
    /* We're unlikely to see an FD much higher than maxconns. */
    int next_fd = FUNC2(1);
    if (next_fd < 0) {
        FUNC6("Failed to duplicate file descriptor\n");
        FUNC3(1);
    }
    int headroom = 10;      /* account for extra unexpected open FDs */
    struct rlimit rl;

    max_fds = settings.maxconns + headroom + next_fd;

    /* But if possible, get the actual highest FD we can possibly ever see. */
    if (FUNC5(RLIMIT_NOFILE, &rl) == 0) {
        max_fds = rl.rlim_max;
    } else {
        FUNC4(stderr, "Failed to query maximum file descriptor; "
                        "falling back to maxconns\n");
    }

    FUNC1(next_fd);

    if ((conns = FUNC0(max_fds, sizeof(conn *))) == NULL) {
        FUNC4(stderr, "Failed to allocate connection structures\n");
        /* This is unrecoverable so bail out early. */
        FUNC3(1);
    }
}