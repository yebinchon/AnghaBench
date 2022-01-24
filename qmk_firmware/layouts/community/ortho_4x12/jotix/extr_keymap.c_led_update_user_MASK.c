#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ caps_lock; int /*<<< orphan*/  num_lock; } ;
typedef  TYPE_1__ led_t ;

/* Variables and functions */
 int /*<<< orphan*/  JOTANCK_LED2 ; 
 int /*<<< orphan*/  KC_NUMLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

bool FUNC3(led_t led_state) {

  // NumLock allways on
  if (!led_state.num_lock) {
    FUNC0(KC_NUMLOCK);
  }

  #ifdef JOTANCK_LEDS
  // CapsLock led
  if (led_state.caps_lock) {
    writePinHigh(JOTANCK_LED2);
  } else {
    writePinLow(JOTANCK_LED2);
  }
  #endif
  return true;
}