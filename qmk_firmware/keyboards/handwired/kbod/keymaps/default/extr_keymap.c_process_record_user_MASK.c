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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  keyrecord_t ;

/* Variables and functions */
 int /*<<< orphan*/  ALT ; 
#define  ALT_F4 129 
 int /*<<< orphan*/  KC_4 ; 
 int /*<<< orphan*/  KC_ESC ; 
 int /*<<< orphan*/  KC_F4 ; 
 int /*<<< orphan*/  KC_GRAVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  SFT_ESC 128 
 int /*<<< orphan*/  SHIFT ; 

bool FUNC2(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case SFT_ESC:
      FUNC1(FUNC0(SHIFT), KC_ESC, KC_GRAVE);

      return false;

    case ALT_F4:
      FUNC1(FUNC0(ALT), KC_4, KC_F4);

      return false;

    default:
      return true;
  }
}