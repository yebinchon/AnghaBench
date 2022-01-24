#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_5__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;
struct TYPE_7__ {int nkro; int /*<<< orphan*/  raw; } ;

/* Variables and functions */
 unsigned long BASE_COLEMAK_LAYER ; 
 unsigned long BASE_QWERTY_LAYER ; 
 int /*<<< orphan*/  BASE_STENO_LAYER ; 
#define  COLEMAK 134 
 int /*<<< orphan*/  KEYBOARD_LAYER ; 
#define  LOWER 133 
 int /*<<< orphan*/  LOWER_LAYER ; 
#define  PV_EXIT 132 
#define  PV_LOOK 131 
#define  QWERTY 130 
#define  RAISE 129 
 int /*<<< orphan*/  RAISE_LAYER ; 
#define  STENO 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_4__ keymap_config ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC11(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case QWERTY:
      if (record->event.pressed) {
        FUNC6(1UL<<BASE_QWERTY_LAYER);
      }
      return false;
    case COLEMAK:
      if (record->event.pressed) {
        FUNC6(1UL<<BASE_COLEMAK_LAYER);
      }
      return false;
    case LOWER:
      if (record->event.pressed) {
        FUNC5(LOWER_LAYER);
        FUNC10(LOWER_LAYER, RAISE_LAYER, KEYBOARD_LAYER);
      } else {
        FUNC4(LOWER_LAYER);
        FUNC10(LOWER_LAYER, RAISE_LAYER, KEYBOARD_LAYER);
      }
      return false;
    case RAISE:
      if (record->event.pressed) {
        FUNC5(RAISE_LAYER);
        FUNC10(LOWER_LAYER, RAISE_LAYER, KEYBOARD_LAYER);
      } else {
        FUNC4(RAISE_LAYER);
        FUNC10(LOWER_LAYER, RAISE_LAYER, KEYBOARD_LAYER);
      }
      return false;
    case STENO:
      if (record->event.pressed) {
        FUNC4(RAISE_LAYER);
        FUNC4(LOWER_LAYER);
        FUNC4(KEYBOARD_LAYER);
        FUNC5(BASE_STENO_LAYER);
        if (!FUNC1()) {
          FUNC0();
        }
        keymap_config.raw = FUNC2();
        keymap_config.nkro = 1;
        FUNC3(keymap_config.raw);
        FUNC8();
      }
      return false;
    case PV_EXIT:
      if (record->event.pressed) {
        FUNC9();
        FUNC4(BASE_STENO_LAYER);
      }
      return false;
    case PV_LOOK:
      if (record->event.pressed) {
        FUNC7();
      }
      return false;
  }
  return true;
}