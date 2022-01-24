#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_7__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_8__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;
struct TYPE_10__ {int swap_lalt_lgui; } ;
struct TYPE_9__ {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
#define  BASE 135 
#define  BASES 134 
#define  KANJI 133 
 int /*<<< orphan*/  KC_LANG2 ; 
#define  LOWER 132 
#define  LOWRS 131 
 int /*<<< orphan*/  L_BASE ; 
 int /*<<< orphan*/  L_BASES ; 
#define  RAISE 130 
#define  RGBRST 129 
#define  RGB_MOD 128 
 int /*<<< orphan*/  RGB_current_mode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  _ADJUST ; 
 int /*<<< orphan*/  _LOWER ; 
 int /*<<< orphan*/  _LOWRS ; 
 int /*<<< orphan*/  _RAISE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_5__ keymap_config ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_3__ rgblight_config ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC12(uint16_t keycode, keyrecord_t *record) {

  FUNC3(keycode, record);

  bool result = false;
  switch (keycode) {
    case LOWER:
      FUNC11(record->event.pressed, _LOWER, _RAISE, _ADJUST);
      break;
    case RAISE:
      FUNC11(record->event.pressed, _RAISE, _LOWER, _ADJUST);
      break;
    case BASE:
      if (record->event.pressed) {
        FUNC4(L_BASE);
      }
      break;
    case BASES:
      if (record->event.pressed) {
        FUNC4(L_BASES);
      }
      break;
    case LOWRS:
      FUNC11(record->event.pressed, _LOWRS, _RAISE, _ADJUST);
      break;
    case KANJI:
      if (record->event.pressed) {
        if (keymap_config.swap_lalt_lgui == false) {
          FUNC6(KC_LANG2);
        } else {
          FUNC0(FUNC1("`"));
        }
      } else {
        FUNC10(KC_LANG2);
      }
      break;
    #ifdef RGBLIGHT_ENABLE
      case RGB_MOD:
          if (record->event.pressed) {
            rgblight_mode(RGB_current_mode);
            rgblight_step();
            RGB_current_mode = rgblight_config.mode;
          }
        break;
      case RGBRST:
          if (record->event.pressed) {
            eeconfig_update_rgblight_default();
            rgblight_enable();
            RGB_current_mode = rgblight_config.mode;
          }
        break;
    #endif
    default:
      result = true;
      break;
  }

  FUNC2();
  return result;
}