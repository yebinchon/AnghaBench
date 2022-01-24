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
typedef  int uint16_t ;
struct TYPE_5__ {scalar_t__ pressed; int /*<<< orphan*/  key; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;
struct TYPE_7__ {int mods; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  KC_LSFT ; 
 int /*<<< orphan*/  KC_RSFT ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int QK_LSFT ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int const**,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int) ; 
 scalar_t__ FUNC11 (int) ; 
 TYPE_3__* keyboard_report ; 
 int FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int) ; 

void FUNC16(keyrecord_t *record, uint8_t base_keymap_id, const uint16_t (*keymap)[2]) {
  uint8_t prev_shift;
  uint16_t keycode;
  uint16_t pseudo_keycode;

  /* get keycode from keymap you specified */
  keycode = FUNC12(base_keymap_id, record->event.key);

  prev_shift = keyboard_report->mods & (FUNC2(KC_LSFT) | FUNC2(KC_RSFT));

  if (record->event.pressed) {
    /* when magic commands entered, keycode does not converted */
    if (FUNC0()) {
      if (prev_shift) {
        FUNC4(keycode);
      }
      FUNC13(keycode);
      return;
    }

    if (prev_shift) {
      pseudo_keycode = FUNC6(keymap, keycode, true);
      FUNC10("pressed: %02X, converted: %04X\n", keycode, pseudo_keycode);
      FUNC4(keycode);

      if (FUNC1(pseudo_keycode)) {
        FUNC13(QK_LSFT ^ pseudo_keycode);
      } else {
        /* delete shift mod temporarily */
        FUNC7(prev_shift);
        FUNC14();
        FUNC13(pseudo_keycode);
        FUNC3(prev_shift);
        FUNC14();
      }
    } else {
      pseudo_keycode = FUNC6(keymap, keycode, false);
      FUNC10("pressed: %02X, converted: %04X\n", keycode, pseudo_keycode);

      if (FUNC1(pseudo_keycode)) {
        FUNC5(FUNC2(KC_LSFT));
        FUNC14();
        FUNC13(QK_LSFT ^ pseudo_keycode);
        /* on Windows, prevent key repeat to avoid unintended output */
        FUNC15(QK_LSFT ^ pseudo_keycode);
        FUNC9(FUNC2(KC_LSFT));
        FUNC14();
      } else {
        FUNC13(pseudo_keycode);
      }
    }
  } else {
    if (FUNC11(keycode)) {
      FUNC8(keycode);
      pseudo_keycode = FUNC6(keymap, keycode, true);
    } else {
      pseudo_keycode = FUNC6(keymap, keycode, false);
    }
    FUNC10("released: %02X, converted: %04X\n", keycode, pseudo_keycode);

    if (FUNC1(pseudo_keycode)) {
      FUNC15(QK_LSFT ^ pseudo_keycode);
    } else {
      FUNC15(pseudo_keycode);
    }
  }
}