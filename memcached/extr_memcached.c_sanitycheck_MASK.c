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
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC3 (char const*,char*,int) ; 

__attribute__((used)) static bool FUNC4(void) {
    /* One of our biggest problems is old and bogus libevents */
    const char *ever = FUNC0();
    if (ever != NULL) {
        if (FUNC3(ever, "1.", 2) == 0) {
            /* Require at least 1.3 (that's still a couple of years old) */
            if (('0' <= ever[2] && ever[2] < '3') && !FUNC2(ever[3])) {
                FUNC1(stderr, "You are using libevent %s.\nPlease upgrade to"
                        " a more recent version (1.3 or newer)\n",
                        FUNC0());
                return false;
            }
        }
    }

    return true;
}