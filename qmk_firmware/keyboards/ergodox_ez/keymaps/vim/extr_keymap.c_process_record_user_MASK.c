#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_5__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;
struct TYPE_7__ {int mods; } ;

/* Variables and functions */
#define  EPRM 152 
 int /*<<< orphan*/  INSERT_MODE ; 
 int /*<<< orphan*/  KC_LSFT ; 
#define  KC_NO 151 
 int /*<<< orphan*/  KC_RSFT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  RGB_SLD 150 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VERSION_STRING ; 
#define  VIM_A 149 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
#define  VIM_B 148 
 int /*<<< orphan*/  FUNC4 () ; 
#define  VIM_C 147 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
#define  VIM_CI 146 
 int /*<<< orphan*/  FUNC15 () ; 
#define  VIM_D 145 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 () ; 
#define  VIM_DI 144 
 int /*<<< orphan*/  FUNC26 () ; 
#define  VIM_E 143 
 int /*<<< orphan*/  FUNC27 () ; 
#define  VIM_H 142 
#define  VIM_I 141 
#define  VIM_J 140 
 int /*<<< orphan*/  FUNC28 () ; 
#define  VIM_K 139 
#define  VIM_L 138 
 int /*<<< orphan*/  FUNC29 (int const) ; 
 int /*<<< orphan*/  FUNC30 () ; 
#define  VIM_O 137 
 int /*<<< orphan*/  FUNC31 () ; 
 int /*<<< orphan*/  FUNC32 () ; 
#define  VIM_P 136 
 int /*<<< orphan*/  FUNC33 () ; 
 int /*<<< orphan*/  FUNC34 () ; 
 int /*<<< orphan*/  VIM_QUEUE ; 
 int /*<<< orphan*/  FUNC35 () ; 
#define  VIM_S 135 
 int /*<<< orphan*/  FUNC36 () ; 
#define  VIM_U 134 
 int /*<<< orphan*/  FUNC37 () ; 
 int /*<<< orphan*/  FUNC38 () ; 
#define  VIM_V 133 
#define  VIM_VI 132 
 int /*<<< orphan*/  FUNC39 () ; 
 int /*<<< orphan*/  FUNC40 () ; 
 int /*<<< orphan*/  FUNC41 () ; 
 int /*<<< orphan*/  FUNC42 () ; 
 int /*<<< orphan*/  FUNC43 () ; 
 int /*<<< orphan*/  FUNC44 () ; 
 int /*<<< orphan*/  FUNC45 () ; 
 int /*<<< orphan*/  FUNC46 () ; 
#define  VIM_W 131 
 int /*<<< orphan*/  FUNC47 () ; 
#define  VIM_X 130 
#define  VIM_Y 129 
 int /*<<< orphan*/  FUNC48 () ; 
 int /*<<< orphan*/  FUNC49 () ; 
#define  VRSN 128 
 int /*<<< orphan*/  FUNC50 () ; 
 TYPE_4__* keyboard_report ; 
 int /*<<< orphan*/  FUNC51 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC52 (int) ; 

bool FUNC53(uint16_t keycode, keyrecord_t *record) {
  bool SHIFTED = (keyboard_report->mods & FUNC0(KC_LSFT)) |
                 (keyboard_report->mods & FUNC0(KC_RSFT));

  switch (keycode) {

    case VIM_A:
      if (record->event.pressed) { SHIFTED ? FUNC3() : FUNC2(); }
      return false;

    case VIM_B:
      if (record->event.pressed) {
        switch(VIM_QUEUE) {
          case KC_NO: FUNC4(); break;
          case VIM_C: FUNC5(); break;
          case VIM_D: FUNC16(); break;
          case VIM_V: FUNC39(); break;
        }
      }
      return false;

    case VIM_C:
      if (record->event.pressed) {
        switch(VIM_QUEUE) {
          case KC_NO: SHIFTED ? FUNC10() : FUNC29(VIM_C); break;
          case VIM_C: FUNC13(); break;
        }
      }
      return false;

    case VIM_D:
      if (record->event.pressed) {
        switch(VIM_QUEUE) {
          case KC_NO: SHIFTED ? FUNC21() : FUNC29(VIM_D); break;
          case VIM_D: FUNC24(); break;
        }
      }
      return false;

    case VIM_E:
      if (record->event.pressed) {
        switch (VIM_QUEUE) {
          case KC_NO: FUNC27(); break;
          case VIM_C: FUNC7(); break;
          case VIM_D: FUNC18(); break;
          case VIM_V: FUNC41(); break;
        }
      }
      return false;

    case VIM_H:
      if (record->event.pressed) {
        switch (VIM_QUEUE) {
          case KC_NO: FUNC30(); break;
          case VIM_C: FUNC9(); break;
          case VIM_D: FUNC20(); break;
          case VIM_V: FUNC43(); break;
        }
      }
      return false;

    case VIM_I:
      if (record->event.pressed) {
        switch (VIM_QUEUE) {
          case KC_NO: FUNC51(INSERT_MODE); break;
          case VIM_C: FUNC29(VIM_CI); break;
          case VIM_D: FUNC29(VIM_DI); break;
          case VIM_V: FUNC29(VIM_VI); break;
        }
      }
      return false;

    case VIM_J:
      if (record->event.pressed) {
        switch (VIM_QUEUE) {
          case KC_NO: SHIFTED ? FUNC28() : FUNC26(); break;
          case VIM_C: FUNC6(); break;
          case VIM_D: FUNC17(); break;
          case VIM_V: FUNC40(); break;
        }
      }
      return false;

    case VIM_K:
      if (record->event.pressed) {
        switch (VIM_QUEUE) {
          case KC_NO: FUNC38(); break;
          case VIM_C: FUNC12(); break;
          case VIM_D: FUNC23(); break;
          case VIM_V: FUNC45(); break;
        }
      }
      return false;

    case VIM_L:
      if (record->event.pressed) {
        switch (VIM_QUEUE) {
          case KC_NO: FUNC35(); break;
          case VIM_C: FUNC11(); break;
          case VIM_D: FUNC22(); break;
          case VIM_V: FUNC44(); break;
        }
      }
      return false;

    case VIM_O:
      if (record->event.pressed) { SHIFTED ? FUNC32() : FUNC31(); }
      return false;

    case VIM_P:
      if (record->event.pressed) { SHIFTED ? FUNC34() : FUNC33(); }
      return false;

    case VIM_S:
      if (record->event.pressed) { SHIFTED ? FUNC13() : FUNC36(); }
      return false;

    case VIM_U:
      if (record->event.pressed) { FUNC37(); }
      return false;

    case VIM_V:
      if (record->event.pressed) { FUNC29(VIM_V); }
      return false;

    case VIM_W:
      if (record->event.pressed) {
        switch (VIM_QUEUE) {
          case KC_NO: FUNC47(); break;
          case VIM_C: FUNC14(); break;
          case VIM_CI: FUNC8(); break;
          case VIM_D: FUNC25(); break;
          case VIM_DI: FUNC19(); break;
          case VIM_V: FUNC46(); break;
          case VIM_VI: FUNC42(); break;
        }
      }
      return false;

    case VIM_X:
      if (record->event.pressed) { FUNC15(); }
      return false;

    case VIM_Y:
      if (record->event.pressed) { SHIFTED ? FUNC49() : FUNC48(); }
      return false;

    // dynamically generate these.
    case EPRM:
      if (record->event.pressed) { FUNC50(); }
      return false;
    case VRSN:
      if (record->event.pressed) { FUNC1(VERSION_STRING); }
      return false;
    case RGB_SLD:
      if (record->event.pressed) { FUNC52(1); }
      return false;
  }

  // End by clearing the queue unless keycode is a
  // if ((record->event.pressed) &&
  //     (keycode != VIM_I ||
  //     keycode != VIM_C ||
  //     keycode != VIM_D ||
  //     keycode != VIM_V)) {
  //   VIM_LEADER(KC_NO);
  // }

  return true;
}