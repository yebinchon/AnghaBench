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
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  KC_LALT ; 
 int /*<<< orphan*/  KC_LCTRL ; 
 int /*<<< orphan*/  KC_LGUI ; 
 int /*<<< orphan*/  KC_LSFT ; 
 int MOD_MASK_ALT ; 
 int MOD_MASK_CTRL ; 
 int MOD_MASK_GUI ; 
 int MOD_MASK_SHIFT ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(uint16_t keycode, uint8_t force_modifiers) {
  uint8_t active_modifiers = FUNC0();

  if ((force_modifiers & MOD_MASK_SHIFT) && !(active_modifiers & MOD_MASK_SHIFT)) FUNC1(KC_LSFT);
  if ((force_modifiers & MOD_MASK_CTRL) && !(active_modifiers & MOD_MASK_CTRL)) FUNC1(KC_LCTRL);
  if ((force_modifiers & MOD_MASK_ALT) && !(active_modifiers & MOD_MASK_ALT)) FUNC1(KC_LALT);
  if ((force_modifiers & MOD_MASK_GUI) && !(active_modifiers & MOD_MASK_GUI)) FUNC1(KC_LGUI);

  FUNC1(keycode);
  FUNC2(keycode);

  if ((force_modifiers & MOD_MASK_SHIFT) && !(active_modifiers & MOD_MASK_SHIFT)) FUNC2(KC_LSFT);
  if ((force_modifiers & MOD_MASK_CTRL) && !(active_modifiers & MOD_MASK_CTRL)) FUNC2(KC_LCTRL);
  if ((force_modifiers & MOD_MASK_ALT) && !(active_modifiers & MOD_MASK_ALT)) FUNC2(KC_LALT);
  if ((force_modifiers & MOD_MASK_GUI) && !(active_modifiers & MOD_MASK_GUI)) FUNC2(KC_LGUI);
}