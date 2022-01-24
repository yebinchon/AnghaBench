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
 int /*<<< orphan*/  HSV_SPRINGGREEN ; 
 scalar_t__ RGBLIGHT_MODE_BREATHING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(void) {
    // Call the post init code.
    FUNC0(); // enables Rgb, without saving settings
    FUNC1(RGBLIGHT_MODE_BREATHING + 1); // sets mode to Slow breathing without saving
    FUNC2(HSV_SPRINGGREEN);
}