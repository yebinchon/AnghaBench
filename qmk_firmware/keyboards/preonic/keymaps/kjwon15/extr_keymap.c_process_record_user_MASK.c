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
#define  BLANK 134 
#define  KC_CESC 133 
 int /*<<< orphan*/  KC_ESC ; 
 int /*<<< orphan*/  KC_LCTL ; 
 int /*<<< orphan*/  KC_SPC ; 
#define  LOWER 132 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  PURE 131 
#define  QWERTY 130 
#define  RAISE 129 
#define  SPC_MOU 128 
 int /*<<< orphan*/  TAPPING_TERM ; 
 int /*<<< orphan*/  _ADJUST ; 
 int /*<<< orphan*/  _BLANK ; 
 int /*<<< orphan*/  _LOWER ; 
 int /*<<< orphan*/  _MOUSE ; 
 int /*<<< orphan*/  _PURE ; 
 int /*<<< orphan*/  _QWERTY ; 
 int /*<<< orphan*/  _RAISE ; 
 int cntl_interrupted ; 
 int /*<<< orphan*/  cntl_timer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int mouse_interrupted ; 
 int /*<<< orphan*/  mouse_timer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC10(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
        case QWERTY:
          if (record->event.pressed) {
            FUNC4(_QWERTY);
          }
          return false;
          break;
        case PURE:
          if (record->event.pressed) {
            FUNC4(_PURE);
          }
          return false;
          break;
        case BLANK:
          if (record->event.pressed) {
            FUNC4(_BLANK);
          }
          return false;
          break;
        case LOWER:
          if (record->event.pressed) {
            FUNC2(_LOWER);
            FUNC9(_LOWER, _RAISE, _ADJUST);
          } else {
            FUNC1(_LOWER);
            FUNC9(_LOWER, _RAISE, _ADJUST);
          }
          return false;
          break;
        case RAISE:
          if (record->event.pressed) {
            FUNC2(_RAISE);
            FUNC9(_LOWER, _RAISE, _ADJUST);
          } else {
            FUNC1(_RAISE);
            FUNC9(_LOWER, _RAISE, _ADJUST);
          }
          return false;
          break;

        // BACKLIT is not used. If you want to use, uncomment below
        /*
        case BACKLIT:
          if (record->event.pressed) {
            register_code(KC_RSFT);
            #ifdef BACKLIGHT_ENABLE
              backlight_step();
            #endif
            #ifdef __AVR__
            PORTE &= ~(1<<6);
            #endif
          } else {
            unregister_code(KC_RSFT);
            #ifdef __AVR__
            PORTE |= (1<<6);
            #endif
          }
          return false;
          break;
        */

        case KC_CESC:
          if (record->event.pressed) {
           cntl_interrupted = false;
           cntl_timer = FUNC7();
           FUNC3(FUNC0(KC_LCTL));
          } else if (!cntl_interrupted && FUNC6(cntl_timer) < TAPPING_TERM) {
           FUNC8(FUNC0(KC_LCTL));
           FUNC5(KC_ESC);
          } else {
           FUNC8(FUNC0(KC_LCTL));
          }
          return false;
          break;

        case SPC_MOU:
          if (record->event.pressed) {
           mouse_interrupted = false;
           mouse_timer = FUNC7();

           cntl_interrupted = true;
           FUNC2(_MOUSE);
          } else if (!mouse_interrupted && FUNC6(mouse_timer) < TAPPING_TERM) {
           FUNC1(_MOUSE);
           FUNC5(KC_SPC);
          } else {
           FUNC1(_MOUSE);
          }
          return false;
          break;

        default:
          cntl_interrupted = true;
          mouse_interrupted = true;
          break;
      }
    return true;
}