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
 int EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char**) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

int FUNC12(int argc, char *argv[])
{
    int ret = EXIT_FAILURE;

    FUNC10();

    if (!FUNC1()) {
        FUNC11("Global init failed - aborting\n");
        return ret;
    }

    if (!FUNC6(argc, argv))
        goto end;

    if (FUNC7()) {
        ret = FUNC5(argv[0]);
        FUNC0();
        FUNC2();
    } else {
        FUNC3(FUNC9());
    }
end:
    ret = FUNC4(ret);
    FUNC8();
    return ret;
}