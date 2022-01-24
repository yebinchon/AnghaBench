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
typedef  scalar_t__ visualizer_keyboard_status_t ;
typedef  scalar_t__ systime_t ;
typedef  int /*<<< orphan*/  GSourceListener ;
typedef  int /*<<< orphan*/  GSourceHandle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__* FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ current_status ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(bool changed) {
    if (changed) {
        GSourceListener* listener = FUNC4((GSourceHandle)&current_status, NULL);
        if (listener) {
            FUNC5(listener);
        }
    }
#ifdef SERIAL_LINK_ENABLE
    static systime_t last_update    = 0;
    systime_t        current_update = chVTGetSystemTimeX();
    systime_t        delta          = current_update - last_update;
    if (changed || delta > MS2ST(10)) {
        last_update                     = current_update;
        visualizer_keyboard_status_t* r = begin_write_current_status();
        *r                              = current_status;
        end_write_current_status();
    }
#endif
}