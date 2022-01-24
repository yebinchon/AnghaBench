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
typedef  int uint8_t ;
struct TYPE_2__ {int mode; int /*<<< orphan*/  val; int /*<<< orphan*/  sat; int /*<<< orphan*/  hue; int /*<<< orphan*/  raw; int /*<<< orphan*/  enable; } ;

/* Variables and functions */
 int RGBLIGHT_MODES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ rgblight_config ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

void FUNC5(uint8_t mode, bool write_to_eeprom) {
  if (!rgblight_config.enable) {
    return;
  }
  if (mode < 1) {
    rgblight_config.mode = 1;
  } else if (mode > RGBLIGHT_MODES) {
    rgblight_config.mode = RGBLIGHT_MODES;
  } else {
    rgblight_config.mode = mode;
  }
  if (write_to_eeprom) {
    FUNC0(rgblight_config.raw);
    FUNC4("rgblight mode [EEPROM]: %u\n", rgblight_config.mode);
  } else {
    FUNC4("rgblight mode [NOEEPROM]: %u\n", rgblight_config.mode);
  }
  if (rgblight_config.mode == 1) {
    #ifdef RGBLIGHT_ANIMATIONS
      rgblight_timer_disable();
    #endif
  } else if ((rgblight_config.mode >= 2 && rgblight_config.mode <= 24) ||
	     rgblight_config.mode == 35 ) {
    // MODE 2-5, breathing
    // MODE 6-8, rainbow mood
    // MODE 9-14, rainbow swirl
    // MODE 15-20, snake
    // MODE 21-23, knight
    // MODE 24, xmas
    // MODE 35  RGB test

    #ifdef RGBLIGHT_ANIMATIONS
      rgblight_timer_enable();
    #endif
  } else if (rgblight_config.mode >= 25 && rgblight_config.mode <= 34) {
    // MODE 25-34, static gradient

    #ifdef RGBLIGHT_ANIMATIONS
      rgblight_timer_disable();
    #endif
  }
  FUNC1(rgblight_config.hue, rgblight_config.sat, rgblight_config.val);
}