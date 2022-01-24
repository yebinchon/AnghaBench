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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  SIGCONT ; 
 int /*<<< orphan*/  SIGSTOP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  WUNTRACED ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(void) {
    pid_t child = FUNC7();
    int status;
    pid_t ret;

    if (child < 0)
        FUNC5("fork() failed");

    /* Only the child returns */
    if (child == 0)
        return;

    for (;;) {
        ret = FUNC10(child, &status, WUNTRACED);
        if ((ret == child) && (FUNC3(status))) {
            /* The child suspended so suspend us as well */
            FUNC9(FUNC8(), SIGSTOP);
            FUNC9(child, SIGCONT);
        } else {
            break;
        }
    }

    /* Return the child's exit code if possible */
    if (FUNC1(status)) {
        FUNC6(FUNC0(status));
    } else if (FUNC2(status)) {
        FUNC9(FUNC8(), FUNC4(status));
    }

    FUNC6(EXIT_FAILURE);
}