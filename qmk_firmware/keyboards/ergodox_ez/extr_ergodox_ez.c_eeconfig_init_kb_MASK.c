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
struct TYPE_2__ {int led_level; int rgb_matrix_enable; scalar_t__ raw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_1__ keyboard_config ; 

void FUNC2(void) {  // EEPROM is getting reset!
    keyboard_config.raw = 0;
    keyboard_config.led_level = 4;
    keyboard_config.rgb_matrix_enable = true;
    FUNC1(keyboard_config.raw);
    FUNC0();
}