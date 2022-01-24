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
struct TYPE_2__ {int enable; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 TYPE_1__ rgblight_config ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

void FUNC2(void) {
  rgblight_config.enable = 1;
  // No need to update EEPROM here. rgblight_mode() will do that, actually
  //eeconfig_update_rgblight(rgblight_config.raw);
  FUNC1("rgblight enable [EEPROM]: rgblight_config.enable = %u\n", rgblight_config.enable);
  FUNC0(rgblight_config.mode);
}