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
 scalar_t__ RGBLIGHT_MODE_SNAKE ; 
 int /*<<< orphan*/  _QW ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(void) {
  #if defined(KEYBOARD_kbdfans_kbd6x)
    set_single_persistent_default_layer(_QW);
    rgblight_mode_noeeprom(RGBLIGHT_MODE_SNAKE + 5);
    rgblight_sethsv_noeeprom(0,0,128);
  #endif
}