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
typedef  scalar_t__ uint8_t ;

/* Variables and functions */
 scalar_t__ LAYER_NUM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  layer_state ; 
 scalar_t__ recording_dynamic_macro ; 

void FUNC5(void) {
  uint8_t layer = FUNC0(layer_state);

  //led 1, RED, Caps-Lock ON
  //if (host_keyboard_leds() & (1<<USB_LED_CAPS_LOCK)) ergodox_right_led_1_on();

  //led 2, GREEN
  if (layer == LAYER_NUM) 
      FUNC2();
  else
      FUNC1();

  //led 3, BLUE
  if (recording_dynamic_macro) 
      FUNC4();
  else
      FUNC3();
}