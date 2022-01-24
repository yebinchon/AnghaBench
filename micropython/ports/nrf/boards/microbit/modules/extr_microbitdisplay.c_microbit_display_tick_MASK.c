#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int brightnesses; scalar_t__ previous_brightness; int /*<<< orphan*/  active; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISPLAY_TICKER_SLOT ; 
 int GREYSCALE_MASK ; 
 int /*<<< orphan*/  callback ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__ microbit_display_obj ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC3(void) {
    /* Do nothing if the display is not active. */
    if (!microbit_display_obj.active) {
        return;
    }

    FUNC0(&microbit_display_obj);

    FUNC1();
    microbit_display_obj.previous_brightness = 0;
    if (microbit_display_obj.brightnesses & GREYSCALE_MASK) {
        FUNC2(DISPLAY_TICKER_SLOT, callback, 1800);
    }
}