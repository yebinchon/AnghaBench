#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_10__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_11__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
#define  AT_DOWN 166 
#define  BASE1 165 
#define  BASE2 164 
 int BASE_1 ; 
 int BASE_12 ; 
 int BASE_2 ; 
#define  CNTR_BL 163 
#define  CNTR_BR 162 
#define  CNTR_HL 161 
#define  CNTR_HR 160 
#define  CNTR_TL 159 
#define  CNTR_TR 158 
#define  CT_RGHT 157 
#define  GT_UP 156 
#define  HOME_A 155 
#define  HOME_E 154 
#define  HOME_H 153 
#define  HOME_I 152 
#define  HOME_R 151 
#define  HOME_S 150 
#define  HOME_T 149 
#define  HOME_W 148 
 int /*<<< orphan*/  KC_4 ; 
 int /*<<< orphan*/  KC_5 ; 
 int /*<<< orphan*/  KC_6 ; 
 int /*<<< orphan*/  KC_DEL ; 
 int /*<<< orphan*/  KC_G ; 
 int /*<<< orphan*/  KC_H ; 
 int /*<<< orphan*/  KC_LALT ; 
 int /*<<< orphan*/  KC_LCTL ; 
 int /*<<< orphan*/  KC_LEFT ; 
 int /*<<< orphan*/  KC_LGUI ; 
 int /*<<< orphan*/  KC_LSFT ; 
 int /*<<< orphan*/  KC_TAB ; 
 int /*<<< orphan*/  KC_W ; 
 int /*<<< orphan*/  LEFT ; 
#define  LT_BSLS 147 
#define  LT_ESC 146 
#define  LT_LEFT 145 
 int /*<<< orphan*/  NOSHIFT ; 
#define  OS_ALT 144 
#define  OS_CTL 143 
#define  OS_GUI 142 
#define  PLOVER 141 
 int /*<<< orphan*/  RIGHT ; 
 int /*<<< orphan*/  SHIFT ; 
#define  SL_LEFT 140 
#define  SL_TAB 139 
#define  SM_CIRC 138 
#define  SM_DLR 137 
#define  SM_G 136 
#define  SM_H 135 
#define  SM_PERC 134 
#define  SM_W 133 
#define  SP_BSPC 132 
#define  SP_DEL 131 
#define  TD_ENT 130 
#define  TD_SPC 129 
#define  TT_ESC 128 
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
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int tt_keycode ; 

bool FUNC8(uint16_t keycode, keyrecord_t *record)
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
    case HOME_R:
#endif
      FUNC6(record, KC_LALT);
      break;
    case CT_RGHT:
#ifdef HOME_MODS
    case HOME_H:
    case HOME_W:
#endif
      FUNC6(record, KC_LGUI);
      break;
    case GT_UP:
#ifdef HOME_MODS
    case HOME_I:
    case HOME_S:
#endif
      FUNC6(record, KC_LCTL);
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
      FUNC5(record, _NUMBER);
      break;
    case LT_LEFT:
    case SP_BSPC:
      FUNC5(record, _SYMBOL);
      // LT (_SYMBOL, KC_LEFT) left right combination layer
      FUNC7(record, RIGHT, 0, 0, _SYMBOL, _LSHIFT);
      break;
    case OS_ALT:
      FUNC6(record, KC_LALT);
      break;
    case OS_CTL:
      FUNC6(record, KC_LCTL);
      break;
    case OS_GUI:
      FUNC6(record, KC_LGUI);
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
    case SM_H:
      // MT(MOD_LCTL | MOD_LSFT, S(KC_K))
      FUNC3(record, KC_LCTL, KC_LSFT, KC_H);
      break;
    case SM_W:
      // MT(MOD_LGUI | MOD_LSFT, S(KC_W))
      FUNC3(record, KC_LGUI, KC_LSFT, KC_W);
      break;
    case SM_PERC:
      // ALT_T(S(KC_5))
      FUNC3(record, KC_LALT, 0, KC_5);
      break;
    case LT_BSLS:
      FUNC5(record, _MOUSE);
      // LT (_MOUSE, KC_BSLS) left right combination layer, see #define LT_BSLS
      FUNC7(record, LEFT, 0, 0, _MOUSE, _SYMBOL);
      break;
    case SL_LEFT:
      FUNC5(record, _MOUSE);
      // LT (_MOUSE, S(KC_LEFT)) left right combination layer
      FUNC7(record, RIGHT, SHIFT, KC_LEFT, _MOUSE, _LSHIFT);
      break;
    case SP_DEL:
      FUNC5(record, _MOUSE);
      // LT (_MOUSE, S(KC_LEFT)) left right combination layer
      FUNC7(record, RIGHT, NOSHIFT, KC_DEL, _MOUSE, _LSHIFT);
      break;
    case SL_TAB:
      // LT (_FNCKEY, S(KC_TAB)) emulation
      FUNC2(record, KC_TAB, _FNCKEY);
      break;
    case TD_ENT:
      FUNC5(record, _RSHIFT);
      // LT (_RSHIFT, KC_ENT) emulation, see tap dance enter
      break;
    case TD_SPC:
      FUNC5(record, _LSHIFT);
      // LT (_LSHIFT, KC_SPC) left right combination layer, see tap dance TD_SPC
      FUNC7(record, LEFT, 0, 0, _LSHIFT, _SYMBOL);
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
    case PLOVER:
      FUNC4(record);
      return false;
  }
  return true;
}