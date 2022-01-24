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
 scalar_t__ OLED_SCROLL_TIMEOUT ; 
 scalar_t__ oled_active ; 
 scalar_t__ oled_dirty ; 
 int /*<<< orphan*/  oled_initialized ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ oled_scroll_timeout ; 
 scalar_t__ oled_scrolling ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ oled_timeout ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 () ; 

void FUNC9(void) {
    if (!oled_initialized) {
        return;
    }

    FUNC5(0, 0);

    FUNC6();

#if OLED_SCROLL_TIMEOUT > 0
    if (oled_dirty && oled_scrolling) {
        oled_scroll_timeout = timer_read32() + OLED_SCROLL_TIMEOUT;
        oled_scroll_off();
    }
#endif

    // Smart render system, no need to check for dirty
    FUNC1();

    // Display timeout check
#if OLED_TIMEOUT > 0
    if (oled_active && timer_expired32(timer_read32(), oled_timeout)) {
        oled_off();
    }
#endif

#if OLED_SCROLL_TIMEOUT > 0
    if (!oled_scrolling && timer_expired32(timer_read32(), oled_scroll_timeout)) {
#    ifdef OLED_SCROLL_TIMEOUT_RIGHT
        oled_scroll_right();
#    else
        oled_scroll_left();
#    endif
    }
#endif
}