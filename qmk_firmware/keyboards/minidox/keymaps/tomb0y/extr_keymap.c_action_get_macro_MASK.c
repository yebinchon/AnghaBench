#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  macro_t ;
struct TYPE_5__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;
struct TYPE_7__ {int mods; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMM ; 
 int /*<<< orphan*/  END ; 
 int /*<<< orphan*/  ENT ; 
 int /*<<< orphan*/  KC_3 ; 
 int /*<<< orphan*/  KC_COMM ; 
 int /*<<< orphan*/  KC_LSFT ; 
 int /*<<< orphan*/  KC_RSFT ; 
 int /*<<< orphan*/  const* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* MACRO_NONE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ONESHOT_PRESSED ; 
 int /*<<< orphan*/  ONESHOT_START ; 
 int /*<<< orphan*/  SPC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _DK ; 
#define  _DK_ACT 131 
#define  _DK_REL 130 
#define  _KC_CENT 129 
#define  _KC_COMS 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__* keyboard_report ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

const macro_t *FUNC8(keyrecord_t *record, uint8_t id, uint8_t opt)
{
  switch(id) {
    case _KC_COMS:
      if (record->event.pressed) {
        return FUNC0(FUNC2(COMM), FUNC2(SPC), END); // comma + space
      }
      break;
    case _KC_CENT:
      if (record->event.pressed) {
        return FUNC0(FUNC2(COMM), FUNC2(ENT), END); // comma + enter
      }
      break;
    case _DK_ACT:
      if (record->event.pressed) {
        if (keyboard_report->mods & FUNC1(KC_LSFT) || keyboard_report->mods & FUNC1(KC_RSFT)) { // act as comma when shift is pressed (eg <)
          FUNC5(KC_COMM);
        } else { // activate oneshot dead key layer otherwise
          FUNC4(_DK);
          FUNC6(_DK, ONESHOT_START);
        }
      } else { // make sure to deactive dead key layer on key release
        FUNC3(ONESHOT_PRESSED);
        FUNC7(KC_COMM);
      }
      break;
    case _DK_REL:
      if (record->event.pressed) { // act as 3 on keypress
        FUNC5(KC_3);
      } else { // make sure to deactive dead key layer on key release
        FUNC3(ONESHOT_PRESSED);
        FUNC7(KC_3);
      }
      break;
  }

  return MACRO_NONE;
}