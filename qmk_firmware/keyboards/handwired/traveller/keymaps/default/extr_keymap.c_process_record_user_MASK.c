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
typedef  int uint16_t ;
struct TYPE_4__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
 int /*<<< orphan*/  KC_MS_DOWN ; 
 int /*<<< orphan*/  KC_MS_LEFT ; 
 int /*<<< orphan*/  KC_MS_RIGHT ; 
 int /*<<< orphan*/  KC_MS_UP ; 
#define  M_MDL 131 
#define  M_MDR 130 
#define  M_MUL 129 
#define  M_MUR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

bool FUNC3(uint16_t keycode, keyrecord_t *record) {
      switch (keycode) {
   // from  algernon's ErgoDox EZ layout,
       case M_MUL:
        if (record->event.pressed) {
          FUNC1(KC_MS_UP);
          FUNC1(KC_MS_LEFT);
        } else {
          FUNC0(KC_MS_UP);
          FUNC0(KC_MS_LEFT);
        }
        FUNC2();
        return false;

      case M_MUR:
        if (record->event.pressed) {
          FUNC1(KC_MS_UP);
          FUNC1(KC_MS_RIGHT);
        } else {
          FUNC0(KC_MS_UP);
          FUNC0(KC_MS_RIGHT);
        }
        FUNC2();
        return false;

      case M_MDL:
        if (record->event.pressed) {
          FUNC1(KC_MS_DOWN);
          FUNC1(KC_MS_LEFT);
        } else {
          FUNC0(KC_MS_DOWN);
          FUNC0(KC_MS_LEFT);
        }
        FUNC2();
        return false;

      case M_MDR:
        if (record->event.pressed) {
          FUNC1(KC_MS_DOWN);
          FUNC1(KC_MS_RIGHT);
        } else {
          FUNC0(KC_MS_DOWN);
          FUNC0(KC_MS_RIGHT);
        }
        FUNC2();
        return false;
      default:
        return true;
      }
    return true;
}