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
#define  A_MDL 131 
#define  A_MDR 130 
#define  A_MUL 129 
#define  A_MUR 128 
 int /*<<< orphan*/  KC_MS_DOWN ; 
 int /*<<< orphan*/  KC_MS_LEFT ; 
 int /*<<< orphan*/  KC_MS_RIGHT ; 
 int /*<<< orphan*/  KC_MS_UP ; 
 int /*<<< orphan*/  KC_RSFT ; 
 int /*<<< orphan*/  const* MACRO_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

const macro_t *FUNC5(keyrecord_t *record, uint8_t id, uint8_t opt)
{
  // MACRODOWN only works in this function
      switch(id) {
        case 0:
          if (record->event.pressed) {
            FUNC3(KC_RSFT);
          } else {
            FUNC4(KC_RSFT);
          }
        break;

	// from  algernon's ErgoDox EZ layout,
       case A_MUL:
        if (record->event.pressed) {
          FUNC1(KC_MS_UP);
          FUNC1(KC_MS_LEFT);
        } else {
          FUNC0(KC_MS_UP);
          FUNC0(KC_MS_LEFT);
        }
        FUNC2();
        break;

      case A_MUR:
        if (record->event.pressed) {
          FUNC1(KC_MS_UP);
          FUNC1(KC_MS_RIGHT);
        } else {
          FUNC0(KC_MS_UP);
          FUNC0(KC_MS_RIGHT);
        }
        FUNC2();
        break;

      case A_MDL:
        if (record->event.pressed) {
          FUNC1(KC_MS_DOWN);
          FUNC1(KC_MS_LEFT);
        } else {
          FUNC0(KC_MS_DOWN);
          FUNC0(KC_MS_LEFT);
        }
        FUNC2();
        break;

      case A_MDR:
        if (record->event.pressed) {
          FUNC1(KC_MS_DOWN);
          FUNC1(KC_MS_RIGHT);
        } else {
          FUNC0(KC_MS_DOWN);
          FUNC0(KC_MS_RIGHT);
        }
        FUNC2();
        break;
     }
    return MACRO_NONE;
}