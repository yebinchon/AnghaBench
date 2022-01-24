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
struct TYPE_2__ {scalar_t__ enable; int /*<<< orphan*/  raw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ rgblight_config ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 

void FUNC4(void) {
  rgblight_config.enable = 0;
  FUNC1(rgblight_config.raw);
  FUNC3("rgblight disable [EEPROM]: rgblight_config.enable = %u\n", rgblight_config.enable);
  #ifdef RGBLIGHT_ANIMATIONS
    //rgblight_timer_disable();
  #endif
  FUNC0(50);
  FUNC2();
}