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
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_7__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_8__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;
struct TYPE_10__ {int nkro; int /*<<< orphan*/  raw; } ;
struct TYPE_9__ {scalar_t__ red_mode; scalar_t__ green_mode; int /*<<< orphan*/  raw; } ;

/* Variables and functions */
#define  COLEMAK 142 
#define  DVORAK 141 
#define  EXT_PLV 140 
 void* LEDMODE_BLINKIN ; 
 scalar_t__ LEDMODE_ENTER ; 
 void* LEDMODE_KEY ; 
 scalar_t__ LEDMODE_MODS ; 
 void* LEDMODE_OFF ; 
 void* LEDMODE_ON ; 
#define  LED_0 139 
#define  LED_1 138 
#define  LED_2 137 
#define  LED_3 136 
#define  LED_4 135 
#define  LED_5 134 
#define  LED_6 133 
#define  LED_7 132 
#define  LED_8 131 
#define  LED_9 130 
 int /*<<< orphan*/  LED_GREEN ; 
 int /*<<< orphan*/  LED_RED ; 
#define  PLOVER 129 
#define  QWERTY 128 
 int /*<<< orphan*/  _ADJUST ; 
 int /*<<< orphan*/  _COLEMAK ; 
 int /*<<< orphan*/  _DVORAK ; 
 int /*<<< orphan*/  _LOWER ; 
 int /*<<< orphan*/  _PLOVER ; 
 int /*<<< orphan*/  _QWERTY ; 
 int /*<<< orphan*/  _RAISE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_6__ keymap_config ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_5__ led_config ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

bool FUNC12(uint16_t keycode, keyrecord_t *record) {
  /* If the either led mode is keypressed based, call the led updater
     then let it fall through the keypress handlers. Just to keep 
     the logic out of this procedure */
  if (led_config.red_mode >= LEDMODE_MODS && led_config.red_mode <= LEDMODE_ENTER) {
      FUNC7(LED_RED, led_config.red_mode, keycode, record);
  }
  if (led_config.green_mode >= LEDMODE_MODS && led_config.green_mode <= LEDMODE_ENTER) {
      FUNC7(LED_GREEN, led_config.green_mode, keycode, record);
  }
  switch (keycode) {
    case QWERTY:
      if (record->event.pressed) {
        FUNC8("mode just switched to qwerty and this is a huge string\n");
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
    case PLOVER:
      if (record->event.pressed) {
        FUNC5(_RAISE);
        FUNC5(_LOWER);
        FUNC5(_ADJUST);
        FUNC6(_PLOVER);
        if (!FUNC1()) {
            FUNC0();
        }
        keymap_config.raw = FUNC2();
        keymap_config.nkro = 1;
        FUNC3(keymap_config.raw);
      }
      return false;
      break;
    case EXT_PLV:
      if (record->event.pressed) {
        FUNC5(_PLOVER);
      }
      return false;
      break;
    case LED_1:
      if (record->event.pressed) {
        if (led_config.red_mode==LEDMODE_ON) {
            led_config.red_mode=LEDMODE_OFF;
            FUNC11(LED_RED);
        }
        else {
            led_config.red_mode=LEDMODE_ON;
            FUNC10(LED_RED);
        }
      }
      FUNC4(led_config.raw);
      return false;
      break;
    case LED_2:
      if (record->event.pressed) {
        if (led_config.green_mode==LEDMODE_ON) {
            led_config.green_mode=LEDMODE_OFF;
            FUNC11(LED_GREEN);
        }
        else {
            led_config.green_mode=LEDMODE_ON;
            FUNC10(LED_GREEN);
        }
      }
      FUNC4(led_config.raw);
      return false;
      break;
    case LED_3:
      led_config.red_mode=LEDMODE_MODS;
      FUNC4(led_config.raw);
      return false;
      break;
    case LED_4:
      led_config.green_mode=LEDMODE_MODS;
      FUNC4(led_config.raw);
      return false;
      break;
    case LED_5:
      led_config.red_mode=LEDMODE_BLINKIN;
      FUNC4(led_config.raw);
      return false;
      break;
    case LED_6:
      led_config.green_mode=LEDMODE_BLINKIN;
      FUNC4(led_config.raw);
      return false;
      break;
    case LED_7:
      led_config.red_mode=LEDMODE_KEY;
      FUNC4(led_config.raw);
      return false;
      break;
    case LED_8:
      led_config.green_mode=LEDMODE_KEY;
      FUNC4(led_config.raw);
      return false;
      break;
    case LED_9:
      led_config.red_mode=LEDMODE_ENTER;
      FUNC4(led_config.raw);
      return false;
      break;
    case LED_0:
      led_config.green_mode=LEDMODE_ENTER;
      FUNC4(led_config.raw);
      return false;
      break;
  }
  return true;
}