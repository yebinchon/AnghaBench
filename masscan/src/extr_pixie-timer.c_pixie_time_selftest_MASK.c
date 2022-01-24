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
typedef  double uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 double FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (double const) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC3(void)
{
    static const uint64_t duration = 456789;
    uint64_t start, stop, elapsed;


    start = FUNC1();
    FUNC2(duration);
    stop = FUNC1();
    elapsed = stop - start;

    if (elapsed < 0.9 * duration) {
        FUNC0(stderr, "timing error, long delay\n");
        return 1;
    }
    if (1.2 * duration < elapsed) {
        FUNC0(stderr, "timing error, long delay %5.0f%%\n", elapsed*100.0/duration);
        return 1;
    }

    return 0;
}