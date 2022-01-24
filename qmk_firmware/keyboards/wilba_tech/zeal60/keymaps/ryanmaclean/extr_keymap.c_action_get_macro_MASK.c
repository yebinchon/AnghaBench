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
typedef  int /*<<< orphan*/  macro_t ;
struct TYPE_4__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  END ; 
 int /*<<< orphan*/  LCTL ; 
 int /*<<< orphan*/  LGUI ; 
 int /*<<< orphan*/  LSFT ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  const* MACRO_NONE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

const macro_t *FUNC5(keyrecord_t *record, uint8_t id, uint8_t opt) // this is the function signature -- just copy/paste it into your keymap file as it is. KC_LSFT KC_LALT KC_LGUI KC_4
{
  switch(id) {
    case 0: // macOS screenshot to capture are to clipboard - this would trigger when you hit a key mapped as M(0)
      if (record->event.pressed) {
        return FUNC1( FUNC0(LSFT), FUNC0(LCTL), FUNC0(LGUI), FUNC2(4), FUNC3(LSFT), FUNC3(LCTL), FUNC3(LGUI), FUNC4(255), END  ); // this sends the string 'hello' when the macro executes
      }
      break;
    case 1: // macOS screenshot capture area to file - this would trigger when you hit a key mapped as M(1)
      if (record->event.pressed) {
        return FUNC1( FUNC0(LSFT), FUNC0(LGUI), FUNC2(4), FUNC3(LSFT), FUNC3(LGUI), FUNC4(255), END  ); // this sends the string 'hello' when the macro executes
      }
      break;
    case 2: // macOS screenshot to clipboard - this would trigger when you hit a key mapped as M(2)
      if (record->event.pressed) {
        return FUNC1( FUNC0(LSFT), FUNC0(LCTL), FUNC0(LGUI), FUNC2(3), FUNC3(LSFT), FUNC3(LCTL), FUNC3(LGUI), FUNC4(255), END  ); // this sends the string 'hello' when the macro executes
      }
      break;
    case 3: // macOS screenshot to file - this would trigger when you hit a key mapped as M(3)
      if (record->event.pressed) {
        return FUNC1( FUNC0(LSFT), FUNC0(LGUI), FUNC2(3), FUNC3(LSFT), FUNC3(LGUI), FUNC4(255), END  ); // this sends the string 'hello' when the macro executes
      }
      break;
  }
  return MACRO_NONE;
}