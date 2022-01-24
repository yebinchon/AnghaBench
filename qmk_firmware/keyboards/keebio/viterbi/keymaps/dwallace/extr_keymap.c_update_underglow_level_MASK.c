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
typedef  int uint8_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  KC_LALT ; 
 int /*<<< orphan*/  KC_LCTL ; 
 int /*<<< orphan*/  KC_LGUI ; 
 int /*<<< orphan*/  KC_LSFT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int RGBLED_NUM ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 () ; 
 int last_mods ; 
 int rgb_dimming ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 

void FUNC5(void) {
  if (FUNC2() == last_mods)
    return;

  last_mods = FUNC2();

  if (FUNC2() == 0) {
    uint8_t level = 0x10 >> rgb_dimming;
    FUNC4(level, level, level);
    return;
  }

  uint32_t mod_colors[4] = {0};
  uint8_t mod_count = 0;
  FUNC4(0x00, 0x00, 0x00);

  if (FUNC2() & FUNC0(KC_LSFT))
    mod_colors[mod_count++] = 0xFF0000;
  if (FUNC2() & FUNC0(KC_LCTL))
    mod_colors[mod_count++] = 0x00FF00;
  if (FUNC2() & FUNC0(KC_LALT))
    mod_colors[mod_count++] = 0x0000FF;
  if (FUNC2() & FUNC0(KC_LGUI))
    mod_colors[mod_count++] = 0xFFFF00;

  uint8_t led_num = 0;
  for (int m = 0; m < mod_count; m++) {
    for (; led_num < RGBLED_NUM*(m+1)/mod_count; led_num++) {
      FUNC1(mod_colors[m], led_num);
    }
  }
  FUNC3();
}