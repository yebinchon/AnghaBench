#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint16_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
 int KC_1 ; 
#define  KC_COMM 129 
#define  KC_DOT 128 
 int /*<<< orphan*/  KC_LSHIFT ; 
 int /*<<< orphan*/  KC_RSHIFT ; 
 int KC_SLSH ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int comm_shifted ; 
 int FUNC1 () ; 
 int ques_shifted ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

bool FUNC4(uint16_t keycode, keyrecord_t *record) {
  uint8_t shifted;
  uint16_t s_keycode;
  bool *k_shifted;

  switch (keycode) {
  case KC_COMM:
    s_keycode = KC_SLSH;
    k_shifted = &comm_shifted;
    break;
  case KC_DOT:
    s_keycode = KC_1;
    k_shifted = &ques_shifted;
    break;
  default:
    return true;
  }

  shifted = FUNC1() & (FUNC0(KC_LSHIFT)|FUNC0(KC_RSHIFT));

  // Keydown. If shift is currently pressed, register its alternate keycode.
  if (record->event.pressed && shifted) {
    *k_shifted = true;
    FUNC2(s_keycode);
    return false;
    // Keyup. If shift was pressed back when the key was pressed, unregister
    // its alternate keycode.
  } else if (!(record->event.pressed) && *k_shifted) {
    *k_shifted = false;
    FUNC3(s_keycode);
    return false;
    // Otherwise, behave as normal.
  } else {
    return true;
  }
}