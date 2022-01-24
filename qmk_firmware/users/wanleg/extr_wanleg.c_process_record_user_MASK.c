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
 int /*<<< orphan*/  DIR ; 
#define  DIRECTION 143 
 int /*<<< orphan*/  ETC ; 
#define  ETCETERA 142 
#define  FUNCTION 141 
#define  GHERKIN 140 
#define  GHERKIN50 139 
 int /*<<< orphan*/  GK50 ; 
 int /*<<< orphan*/  NUM ; 
#define  NUMBER 138 
#define  NUMPAD 137 
 int /*<<< orphan*/  ONE ; 
#define  ONEHAND 136 
 int /*<<< orphan*/  PAD ; 
#define  QWERTY 135 
#define  RESET 134 
 int /*<<< orphan*/  RGBLIGHT_MODE_BREATHING ; 
 int /*<<< orphan*/  RGBLIGHT_MODE_KNIGHT ; 
 int /*<<< orphan*/  RGBLIGHT_MODE_STATIC_LIGHT ; 
 int /*<<< orphan*/  SUB ; 
#define  SUBTER 133 
 int /*<<< orphan*/  SUP ; 
#define  SUPRA 132 
 int /*<<< orphan*/  _FN ; 
 int /*<<< orphan*/  _GK ; 
 int /*<<< orphan*/  _QW ; 
 int /*<<< orphan*/  gDIR ; 
#define  gDIRECTION 131 
 int /*<<< orphan*/  gETC ; 
#define  gETCETERA 130 
#define  gGHERKIN 129 
 int /*<<< orphan*/  gGK ; 
 int /*<<< orphan*/  gNUM ; 
#define  gNUMBER 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

bool FUNC7(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case QWERTY:
      if (record->event.pressed) {
        FUNC6(_QW);
		#if defined(RGBLIGHT_ENABLE)
		rgblight_sethsv_noeeprom(0,0,128);
        rgblight_mode_noeeprom(RGBLIGHT_MODE_BREATHING);
		#endif
      }
      return false;
      break;
    case GHERKIN:
      if (record->event.pressed) {
        FUNC6(_GK);
		#if defined(RGBLIGHT_ENABLE)
        rgblight_sethsv_noeeprom(128,255,64);
		#endif
      }
      return false;
      break;
    case gGHERKIN:
      if (record->event.pressed) {
        FUNC6(gGK);
		#if defined(RGBLIGHT_ENABLE)
        rgblight_sethsv_noeeprom(128,255,128);
        rgblight_mode_noeeprom(RGBLIGHT_MODE_KNIGHT);
		#endif
      }
      return false;
      break;
    case ONEHAND:
    if (record->event.pressed) {
      FUNC6(ONE);
      }
      return false;
      break;
    case NUMPAD:
    if (record->event.pressed) {
      FUNC6(PAD);
      }
      return false;
      break;
    case GHERKIN50:
    if (record->event.pressed) {
      FUNC6(GK50);
      }
      return false;
      break;
    case SUBTER:
      if (record->event.pressed) {
        FUNC1(SUB);
      } else {
        FUNC0(SUB);
      }
      return false;
      break;
    case SUPRA:
      if (record->event.pressed) {
        FUNC1(SUP);
      } else {
        FUNC0(SUP);
      }
      return false;
      break;
	case NUMBER:
      if (record->event.pressed) {
        FUNC1(NUM);
      } else {
        FUNC0(NUM);
      }
      return false;
      break;
	case DIRECTION:
      if (record->event.pressed) {
        FUNC1(DIR);
      } else {
        FUNC0(DIR);
      }
      return false;
      break;
	case ETCETERA:
      if (record->event.pressed) {
        FUNC1(ETC);
      } else {
        FUNC0(ETC);
      }
      return false;
      break;
  case gNUMBER:
      if (record->event.pressed) {
        FUNC1(gNUM);
      } else {
        FUNC0(gNUM);
      }
      return false;
      break;
  case gDIRECTION:
      if (record->event.pressed) {
        FUNC1(gDIR);
      } else {
        FUNC0(gDIR);
      }
      return false;
      break;
	case gETCETERA:
      if (record->event.pressed) {
        FUNC1(gETC);
      } else {
        FUNC0(gETC);
      }
      return false;
      break;
	case FUNCTION:
      if (record->event.pressed) {
        FUNC1(_FN);
      } else {
        FUNC0(_FN);
      }
      return false;
      break;
  //on RESET, underglow red if present
  case RESET:
      if (record->event.pressed) {
		  #if defined(RGBLIGHT_ENABLE)
		  rgblight_enable_noeeprom(); // enables Rgb, without saving settings
		  rgblight_mode_noeeprom(RGBLIGHT_MODE_STATIC_LIGHT);
		  rgblight_sethsv_noeeprom_red();
		  #endif
      }
      return true; // Let QMK send the press/release events as normal
      break;
  }
  return true;
}