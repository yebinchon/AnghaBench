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
typedef  scalar_t__ uint8_t ;
struct TYPE_2__ {scalar_t__ mode; } ;

/* Variables and functions */
 scalar_t__ RGBLIGHT_MODE_STATIC_LIGHT ; 
 TYPE_1__ rgblight_config ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

void FUNC1(void) {
    uint8_t mode = 0;
    // Mode will never be < 1. If it ever is, eeprom needs to be initialized.
    if (rgblight_config.mode > RGBLIGHT_MODE_STATIC_LIGHT) {
        mode = rgblight_config.mode - 1;
    }
    FUNC0(mode);
}