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
typedef  int uint16_t ;
struct TYPE_5__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;
struct TYPE_7__ {int mode; } ;

/* Variables and functions */
#define  ADJUST 136 
#define  BL_STEP 135 
#define  BL_TOGG 134 
#define  COLEMAK 133 
#define  DVORAK 132 
#define  LOWER 131 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
#define  QWERTY 130 
#define  RAISE 129 
#define  RGB_MOD 128 
 int RGB_current_mode ; 
 int TOG_STATUS ; 
 int /*<<< orphan*/  _ADJUST ; 
 int /*<<< orphan*/  _LOWER ; 
 int /*<<< orphan*/  _RAISE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 TYPE_3__ rgblight_config ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  tone_colemak ; 
 int /*<<< orphan*/  tone_dvorak ; 
 int /*<<< orphan*/  tone_qwerty ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC9(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case QWERTY:
      if (record->event.pressed) {
        #ifdef AUDIO_ENABLE
          PLAY_NOTE_ARRAY(tone_qwerty, false, 0);
        #endif
//        persistent_default_layer_set(1UL<<_QWERTY);
      }
      return false;
      break;
    case COLEMAK:
      if (record->event.pressed) {
        #ifdef AUDIO_ENABLE
          PLAY_NOTE_ARRAY(tone_colemak, false, 0);
        #endif
//        persistent_default_layer_set(1UL<<_COLEMAK);
      }
      return false;
      break;
    case DVORAK:
      if (record->event.pressed) {
        #ifdef AUDIO_ENABLE
          PLAY_NOTE_ARRAY(tone_dvorak, false, 0);
        #endif
//        persistent_default_layer_set(1UL<<_DVORAK);
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
                rgblight_mode(16);
#endif
            }
            FUNC4(_LOWER);
            FUNC8(_LOWER, _RAISE, _ADJUST);
        } else {
#ifdef RGBLIGHT_ENABLE
            rgblight_mode(RGB_current_mode);   // revert RGB to initial mode prior to RGB mode change
#endif
            TOG_STATUS = false;
            FUNC3(_LOWER);
            FUNC8(_LOWER, _RAISE, _ADJUST);
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
                rgblight_mode(15);
#endif
            }
            FUNC4(_RAISE);
            FUNC8(_LOWER, _RAISE, _ADJUST);
        } else {
#ifdef RGBLIGHT_ENABLE
            rgblight_mode(RGB_current_mode);  // revert RGB to initial mode prior to RGB mode change
#endif
            FUNC3(_RAISE);
            TOG_STATUS = false;
            FUNC8(_LOWER, _RAISE, _ADJUST);
        }
        return false;
        break;
    case ADJUST:
        // FIXME add RGB feedback
        if (record->event.pressed) {
            FUNC4(_ADJUST);
        } else {
            FUNC3(_ADJUST);
        }
        return false;
        break;
    case BL_TOGG:
#ifdef BACKLIGHT_ENABLE
        if (record->event.pressed) {
            print("Enabling backlight\n");
            backlight_init_ports();
        }
#endif
        return false;
        break;
    case BL_STEP:
        if (record->event.pressed) {
            FUNC5("Stepping backlight\n");
#ifdef BACKLIGHT_ENABLE
            print("Really stepping backlight\n");
            backlight_step();
#endif

        }
        return false;
        break;
        //led operations - RGB mode change now updates the RGB_current_mode to allow the right RGB mode to be set after reactive keys are released
#ifdef RGBLIGHT_ENABLE
    case RGB_MOD:
        if (record->event.pressed) {
            rgblight_mode(RGB_current_mode);
            rgblight_step();
            RGB_current_mode = rgblight_config.mode;
        }
        return false;
        break;
#endif
//    case BL_INC:
//    		meira_inc_backlight_level();
//    	      return false;
//    		break;
  }
  return true;
}