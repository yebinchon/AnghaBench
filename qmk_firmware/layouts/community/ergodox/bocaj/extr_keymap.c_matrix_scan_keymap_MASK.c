#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;

/* Variables and functions */
 int MODS_ALT_MASK ; 
 int MODS_CTRL_MASK ; 
 int MODS_GUI_MASK ; 
 int MODS_SHIFT_MASK ; 
 int USB_LED_CAPS_LOCK ; 
#define  _ADJUST 133 
#define  _DIABLO 132 
#define  _LOWER 131 
#define  _QWERTY 130 
#define  _WINWORKMAN 129 
#define  _WORKMAN 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 () ; 
 int FUNC12 () ; 
 int FUNC13 () ; 
 int /*<<< orphan*/  layer_state ; 

void FUNC14(void) {
  uint8_t modifiers = FUNC11();
  uint8_t led_usb_state = FUNC13();
  uint8_t one_shot = FUNC12();
  uint8_t layer = FUNC0(layer_state);

  FUNC1();
  FUNC2();
  FUNC5();
  FUNC8();

  switch (layer) {
    case _WORKMAN:
    case _QWERTY:
    case _WINWORKMAN:
      if (modifiers & MODS_SHIFT_MASK || led_usb_state & (1<<USB_LED_CAPS_LOCK) || one_shot & MODS_SHIFT_MASK) {
        FUNC3();
        FUNC4( 25 );
      }
      if (modifiers & MODS_CTRL_MASK || one_shot & MODS_CTRL_MASK || modifiers & MODS_GUI_MASK || one_shot & MODS_GUI_MASK) {
        if ((modifiers & MODS_CTRL_MASK || one_shot & MODS_CTRL_MASK) && (modifiers & MODS_GUI_MASK || one_shot & MODS_GUI_MASK)) {
          FUNC6();
          FUNC7( 50 );
        } else {
          FUNC6();
          FUNC7( 10 );
        }
      }
      if (modifiers & MODS_ALT_MASK || one_shot & MODS_ALT_MASK) {
        FUNC9();
        FUNC10( 10 );
      }
      break;
    case _LOWER:
      FUNC9();
      FUNC10(10); // Default brightness is deadly in a dark room
      break;
    case _ADJUST:
      FUNC6();
      FUNC7(10);
      break;
    case _DIABLO:
      FUNC3();
      FUNC4(10);
      break;
    default:
      // none
      break;
  }
}