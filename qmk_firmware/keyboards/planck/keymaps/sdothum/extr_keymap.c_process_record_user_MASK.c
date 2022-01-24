#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_11__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_12__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
#define  AT_DOWN 170 
#define  BASE1 169 
#define  BASE2 168 
 int BASE_1 ; 
 int BASE_12 ; 
 int BASE_2 ; 
#define  CNTR_BL 167 
#define  CNTR_BR 166 
#define  CNTR_HL 165 
#define  CNTR_HR 164 
#define  CNTR_TL 163 
#define  CNTR_TR 162 
#define  CT_RGHT 161 
#define  GT_UP 160 
#define  HOME_A 159 
#define  HOME_B 158 
#define  HOME_E 157 
#define  HOME_H 156 
#define  HOME_K 155 
#define  HOME_N 154 
#define  HOME_R 153 
#define  HOME_S 152 
#define  HOME_T 151 
#define  HOME_W 150 
 int /*<<< orphan*/  KC_4 ; 
 int /*<<< orphan*/  KC_5 ; 
 int /*<<< orphan*/  KC_6 ; 
 int /*<<< orphan*/  KC_9 ; 
 int /*<<< orphan*/  KC_BSLS ; 
 int /*<<< orphan*/  KC_DEL ; 
 int /*<<< orphan*/  KC_G ; 
 int /*<<< orphan*/  KC_LALT ; 
 int /*<<< orphan*/  KC_LCTL ; 
 int /*<<< orphan*/  KC_LEFT ; 
 int /*<<< orphan*/  KC_LGUI ; 
 int /*<<< orphan*/  KC_LSFT ; 
 int /*<<< orphan*/  KC_TAB ; 
 int /*<<< orphan*/  LEFT ; 
#define  LT_BSLS 149 
#define  LT_ESC 148 
#define  LT_LEFT 147 
 int /*<<< orphan*/  NOSHIFT ; 
#define  OS_ALT 146 
#define  OS_CTL 145 
#define  OS_GUI 144 
#define  PLOEXIT 143 
#define  PLOVER 142 
#define  PS_BASE 141 
 int /*<<< orphan*/  RIGHT ; 
 int /*<<< orphan*/  SHIFT ; 
#define  SL_LEFT 140 
#define  SL_PIPE 139 
#define  SL_TAB 138 
#define  SM_CIRC 137 
#define  SM_DLR 136 
#define  SM_G 135 
#define  SM_LPRN 134 
#define  SM_PERC 133 
#define  SP_BSPC 132 
#define  SP_DEL 131 
#define  TD_ENT 130 
#define  TD_SPC 129 
#define  TT_ESC 128 
 int /*<<< orphan*/  _ADJUST ; 
 int /*<<< orphan*/  _FNCKEY ; 
 int /*<<< orphan*/  _LSHIFT ; 
 int /*<<< orphan*/  _MOUSE ; 
 int /*<<< orphan*/  _NUMBER ; 
 int /*<<< orphan*/  _RSHIFT ; 
 int /*<<< orphan*/  _SYMBOL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int base_n ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int tt_keycode ; 

bool FUNC9(uint16_t keycode, keyrecord_t *record)
{
  switch (keycode) {
    case BASE1:
      if (record->event.pressed) {
        base_n = base_n | BASE_1;
        if (base_n == BASE_12) {
          FUNC0();
        }
      }
      else {
        base_n = base_n & ~BASE_1;
      }
      return false;
    case BASE2:
      if (record->event.pressed) {
        base_n = base_n | BASE_2;
        if (base_n == BASE_12) {
          FUNC0();
        }
      }
      else {
        base_n = base_n & ~BASE_2;
      }
      return false;
    case AT_DOWN:
#ifdef HOME_MODS
    case HOME_E:
#if defined(BEAKLMU) || defined(BEAKLSP)
    case HOME_R:
#else
    case HOME_S:
#endif
#endif
      FUNC7(record, KC_LALT);
      break;
    case CT_RGHT:
#ifdef HOME_MODS
    case HOME_K:
#if defined(BEAKLMU) || defined(BEAKLSP)
    case HOME_W:
#else
    case HOME_B:
#endif
#endif
      FUNC7(record, KC_LCTL);
      break;
    case GT_UP:
#ifdef HOME_MODS
    case HOME_H:
#if defined(BEAKLMU) || defined(BEAKLSP)
    case HOME_S:
#else
    case HOME_N:
#endif
#endif
      FUNC7(record, KC_LGUI);
      break;
#ifdef HOME_MODS
    case HOME_A:
    case HOME_T:
      tap_mods(record, KC_LSFT);
      break;
#endif
#ifdef CENTER_TT
    case TT_ESC:
      clear_tt();                           // exit TT layer
      return false;
#endif
    case LT_ESC:
#ifdef CENTER_TT
      if (tt_keycode != 0) {
        clear_tt();                         // exit TT layer
        return false;
      }
#endif
      FUNC6(record, _NUMBER);
      break;
    case LT_LEFT:
    case SP_BSPC:
      FUNC6(record, _SYMBOL);
      // LT (_SYMBOL, KC_LEFT) left right combination layer
      FUNC8(record, RIGHT, 0, 0, _SYMBOL, _LSHIFT);
      break;
    case OS_ALT:
      FUNC7(record, KC_LALT);
      break;
    case OS_CTL:
      FUNC7(record, KC_LCTL);
      break;
    case OS_GUI:
      FUNC7(record, KC_LGUI);
      break;
    case SM_CIRC:
      // GUI_T(S(KC_6))
      FUNC3(record, KC_LGUI, 0, KC_6);
      break;
    case SM_DLR:
      // SFT_T(S(KC_4))
      FUNC3(record, KC_LSFT, 0, KC_4);
      break;
    case SM_G:
      // MT(MOD_LALT | MOD_LSFT, S(KC_G))
      FUNC3(record, KC_LALT, KC_LSFT, KC_G);
      break;
    case SM_LPRN:
      // CTL_T(S(KC_9))
      FUNC3(record, KC_LCTL, 0, KC_9);
      break;
    case SM_PERC:
      // ALT_T(S(KC_5))
      FUNC3(record, KC_LALT, 0, KC_5);
      break;
    case LT_BSLS:
      FUNC6(record, _MOUSE);
      // LT (_MOUSE, KC_BSLS) left right combination layer, see #define LT_BSLS
      FUNC8(record, LEFT, 0, 0, _MOUSE, _SYMBOL);
      break;
    case SL_LEFT:
      FUNC6(record, _MOUSE);
      // LT (_MOUSE, S(KC_LEFT)) left right combination layer
      FUNC8(record, RIGHT, SHIFT, KC_LEFT, _MOUSE, _LSHIFT);
      break;
    case SP_DEL:
      FUNC6(record, _MOUSE);
      // LT (_MOUSE, S(KC_LEFT)) left right combination layer
      FUNC8(record, RIGHT, NOSHIFT, KC_DEL, _MOUSE, _LSHIFT);
      break;
    case SL_PIPE:
      // LT (_ADJUST, S(KC_BSLS)) emulation
      FUNC2(record, KC_BSLS, _ADJUST);
      break;
    case SL_TAB:
      // LT (_FNCKEY, S(KC_TAB)) emulation
      FUNC2(record, KC_TAB, _FNCKEY);
      break;
    case TD_ENT:
      FUNC6(record, _RSHIFT);
      // LT (_RSHIFT, KC_ENT) emulation, see tap dance enter
      break;
    case TD_SPC:
      FUNC6(record, _LSHIFT);
      // LT (_LSHIFT, KC_SPC) left right combination layer, see tap dance TD_SPC
      FUNC8(record, LEFT, 0, 0, _LSHIFT, _SYMBOL);
      break;
#ifdef CENTER_TT
    case CNTR_TL:
    case CNTR_TR:
    case CNTR_HL:
    case CNTR_HR:
    case CNTR_BL:
    case CNTR_BR:
      if (tt_keycode != keycode && tt_keycode != 0) {
        clear_tt();                         // return to base layer first if different TT layer selected
      }
      tt_keycode = keycode;
      break;
#endif
// #ifdef STENO_ENABLE
//     case PS_STNA:
//       stn_layer(record, STN_A, _NUMBER);
//       break;
//     case PS_STNO:
//       stn_layer(record, STN_O, _FNCKEY);
//       break;
//     case PS_STNE:
//       stn_layer(record, STN_E, _EDIT);
//       break;
//     case PS_STNU:
//       stn_layer(record, STN_U, _SYMBOL);
//       break;
// #endif
    case PS_BASE:
      if (record->event.pressed) {
        FUNC0();
      }
      return false;
    case PLOVER:
      FUNC4(record);
      return false;
    case PLOEXIT:
      FUNC5(record);
      return false;
  }
  return true;
}