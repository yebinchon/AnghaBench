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
struct vo_x11_state {double screensaver_time_last; scalar_t__ display; int /*<<< orphan*/  screensaver_sem; int /*<<< orphan*/  screensaver_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 double FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct vo_x11_state *x11)
{
    double time = FUNC1();

    if (x11->display && !x11->screensaver_enabled &&
        (time - x11->screensaver_time_last) >= 10)
    {
        x11->screensaver_time_last = time;
        FUNC2(&x11->screensaver_sem);
        FUNC0(x11->display);
    }
}