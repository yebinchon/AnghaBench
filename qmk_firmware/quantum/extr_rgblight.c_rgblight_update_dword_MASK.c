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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  mode; scalar_t__ enable; int /*<<< orphan*/  raw; } ;

/* Variables and functions */
 int /*<<< orphan*/  RGBLIGHT_SPLIT_SET_CHANGE_MODEHSVS ; 
 TYPE_1__ rgblight_config ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(uint32_t dword) {
    RGBLIGHT_SPLIT_SET_CHANGE_MODEHSVS;
    rgblight_config.raw = dword;
    if (rgblight_config.enable)
        FUNC0(rgblight_config.mode);
    else {
#ifdef RGBLIGHT_USE_TIMER
        rgblight_timer_disable();
#endif
        FUNC1();
    }
}