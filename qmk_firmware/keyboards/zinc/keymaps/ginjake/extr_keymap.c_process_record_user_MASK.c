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
struct TYPE_9__ {int mode; } ;

/* Variables and functions */
#define  ADJUST 138 
#define  AQOURS 137 
#define  COLEMAK 136 
#define  DVORAK 135 
#define  EISU 134 
#define  KANA 133 
 int /*<<< orphan*/  KC_LANG1 ; 
 int /*<<< orphan*/  KC_LANG2 ; 
#define  LOWER 132 
#define  QWERTY 131 
#define  RAISE 130 
#define  RGBRST 129 
#define  RGB_MOD 128 
 TYPE_3__ RGB_current_config ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int TOG_STATUS ; 
 int /*<<< orphan*/  _ADJUST ; 
 int /*<<< orphan*/  _COLEMAK ; 
 int /*<<< orphan*/  _DVORAK ; 
 int /*<<< orphan*/  _LOWER ; 
 int /*<<< orphan*/  _QWERTY ; 
 int /*<<< orphan*/  _RAISE ; 
 int aqours_mode ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_5__ keymap_config ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_3__ rgblight_config ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC12(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case QWERTY:
      if (record->event.pressed) {
        FUNC9(_QWERTY);
      }
      return false;
      break;
    case COLEMAK:
      if (record->event.pressed) {
        FUNC9(_COLEMAK);
      }
      return false;
      break;
    case DVORAK:
      if (record->event.pressed) {
        FUNC9(_DVORAK);
      }
      return false;
      break;

    case LOWER:
      if (record->event.pressed) {
          //not sure how to have keyboard check mode and set it to a variable, so my work around
          //uses another variable that would be set to true after the first time a reactive key is pressed.
        if (TOG_STATUS) { //TOG_STATUS checks is another reactive key currently pressed, only changes RGB mode if returns false
        } else {
          TOG_STATUS = !TOG_STATUS;
          #ifdef RGBLIGHT_ENABLE
           rgblight_mode_noeeprom(16);
          #endif
        }
        FUNC4(_LOWER);
        FUNC11(_LOWER, _RAISE, _ADJUST);
      } else {
        #ifdef RGBLIGHT_ENABLE
          rgblight_mode_noeeprom(RGB_current_config.mode);   // revert RGB to initial mode prior to RGB mode change
        #endif
        TOG_STATUS = false;
        FUNC3(_LOWER);
        FUNC11(_LOWER, _RAISE, _ADJUST);
      }
      return false;
      break;

    case RAISE:
      if (record->event.pressed) {
        //not sure how to have keyboard check mode and set it to a variable, so my work around
        //uses another variable that would be set to true after the first time a reactive key is pressed.
        if (TOG_STATUS) { //TOG_STATUS checks is another reactive key currently pressed, only changes RGB mode if returns false
        } else {
          TOG_STATUS = !TOG_STATUS;
          #ifdef RGBLIGHT_ENABLE
            rgblight_mode_noeeprom(15);
          #endif
        }
        FUNC4(_RAISE);
        FUNC11(_LOWER, _RAISE, _ADJUST);
      } else {
        #ifdef RGBLIGHT_ENABLE
          rgblight_mode_noeeprom(RGB_current_config.mode);  // revert RGB to initial mode prior to RGB mode change
        #endif
        FUNC3(_RAISE);
        TOG_STATUS = false;
        FUNC11(_LOWER, _RAISE, _ADJUST);
      }
      return false;
      break;

    case ADJUST:
        if (record->event.pressed) {
          FUNC4(_ADJUST);
        } else {
          FUNC3(_ADJUST);
        }
        return false;
        break;
      //led operations - RGB mode change now updates the RGB_current_mode to allow the right RGB mode to be set after reactive keys are released
    case RGB_MOD:
      #ifdef RGBLIGHT_ENABLE
        if (record->event.pressed) {
          rgblight_mode_noeeprom(RGB_current_config.mode);
          rgblight_step();
          RGB_current_config.mode = rgblight_config.mode;
        }
      #endif
      return false;
      break;

    case EISU:
      if (record->event.pressed) {
        if(keymap_config.swap_lalt_lgui==false){
          FUNC5(KC_LANG2);
        }else{
          FUNC0(FUNC1("`"));
        }
      } else {
        FUNC10(KC_LANG2);
      }
      return false;
      break;
    case KANA:
      if (record->event.pressed) {
        if(keymap_config.swap_lalt_lgui==false){
          FUNC5(KC_LANG1);
        }else{
         FUNC0(FUNC1("`"));
        }
      } else {
        FUNC10(KC_LANG1);
      }
      return false;
      break;
    case AQOURS:
      #ifdef RGBLIGHT_ENABLE
        if (record->event.pressed) {
          aqours_mode = !aqours_mode;
        }
      #endif
      break;
    case RGBRST:
      #ifdef RGBLIGHT_ENABLE
        if (record->event.pressed) {
          eeconfig_update_rgblight_default();
          rgblight_enable();
          RGB_current_config = rgblight_config;
        }
      #endif
      break;
  }
  return true;
}