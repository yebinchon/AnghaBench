#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_4__ {int restart; } ;
struct TYPE_3__ {int /*<<< orphan*/  val; int /*<<< orphan*/  sat; int /*<<< orphan*/  hue; scalar_t__ mode; int /*<<< orphan*/  raw; int /*<<< orphan*/  enable; } ;

/* Variables and functions */
 scalar_t__ RGBLIGHT_MODES ; 
 scalar_t__ RGBLIGHT_MODE_STATIC_LIGHT ; 
 int /*<<< orphan*/  RGBLIGHT_SPLIT_SET_CHANGE_MODE ; 
 TYPE_2__ animation_status ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 TYPE_1__ rgblight_config ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(uint8_t mode, bool write_to_eeprom) {
    if (!rgblight_config.enable) {
        return;
    }
    if (mode < RGBLIGHT_MODE_STATIC_LIGHT) {
        rgblight_config.mode = RGBLIGHT_MODE_STATIC_LIGHT;
    } else if (mode > RGBLIGHT_MODES) {
        rgblight_config.mode = RGBLIGHT_MODES;
    } else {
        rgblight_config.mode = mode;
    }
    RGBLIGHT_SPLIT_SET_CHANGE_MODE;
    if (write_to_eeprom) {
        FUNC1(rgblight_config.raw);
        FUNC0("rgblight mode [EEPROM]: %u\n", rgblight_config.mode);
    } else {
        FUNC0("rgblight mode [NOEEPROM]: %u\n", rgblight_config.mode);
    }
    if (FUNC2(rgblight_config.mode)) {
#ifdef RGBLIGHT_USE_TIMER
        rgblight_timer_disable();
#endif
    } else {
#ifdef RGBLIGHT_USE_TIMER
        rgblight_timer_enable();
#endif
    }
#ifdef RGBLIGHT_USE_TIMER
    animation_status.restart = true;
#endif
    FUNC3(rgblight_config.hue, rgblight_config.sat, rgblight_config.val);
}