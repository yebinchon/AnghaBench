#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_7__ {scalar_t__ pressed; } ;
struct TYPE_8__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;
struct TYPE_10__ {int swap_lalt_lgui; } ;
struct TYPE_9__ {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
#define  EISU 131 
#define  KANA 130 
 int /*<<< orphan*/  KC_LANG1 ; 
 int /*<<< orphan*/  KC_LANG2 ; 
#define  RGBRST 129 
#define  RGB_MOD 128 
 int /*<<< orphan*/  RGB_current_mode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_6__ keymap_config ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_4__ rgblight_config ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

bool FUNC9(uint16_t keycode, keyrecord_t *record) {
  #ifdef SSD1306OLED
    if (record->event.pressed) {
      set_keylog(keycode, record);
    }
  #endif

  switch (keycode) {
    #ifdef RGBLIGHT_ENABLE
      //led operations - RGB mode change now updates the RGB_current_mode to allow the right RGB mode to be set after reactive keys are released
      case RGB_MOD:
          if (record->event.pressed) {
            rgblight_mode(RGB_current_mode);
            rgblight_step();
            RGB_current_mode = rgblight_config.mode;
          }
        break;
    #endif
    #ifdef KANA_ENABLE
      case EISU:
        if (record->event.pressed) {
          if (keymap_config.swap_lalt_lgui==false) {
            register_code(KC_LANG2);
          } else {
            SEND_STRING(SS_LALT("`"));
          }
        } else {
          unregister_code(KC_LANG2);
        }
        break;
      case KANA:
        if (record->event.pressed) {
          if(keymap_config.swap_lalt_lgui==false){
            register_code(KC_LANG1);
          }else{
            SEND_STRING(SS_LALT("`"));
          }
        } else {
          unregister_code(KC_LANG1);
        }
        break;
    #endif
    #ifdef RGBLIGHT_ENABLE
      case RGBRST:
          if (record->event.pressed) {
            eeconfig_update_rgblight_default();
            rgblight_enable();
            RGB_current_mode = rgblight_config.mode;
          }
        break;
    #endif
    default:
      return true;
  }

  return false;
}