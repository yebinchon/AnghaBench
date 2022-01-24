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
#define  BASE 133 
#define  EISU 132 
#define  GAME 131 
#define  KANA 130 
 int /*<<< orphan*/  KC_LANG1 ; 
 int /*<<< orphan*/  KC_LANG2 ; 
#define  META 129 
#define  SYMB 128 
 unsigned long _BASE ; 
 int /*<<< orphan*/  _GAME ; 
 int /*<<< orphan*/  _META ; 
 int /*<<< orphan*/  _SYMB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC6(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case BASE:
      if (record->event.pressed) {
        FUNC2(1UL<<_BASE);
      }
      return false;
      break;
    case META:
      if (record->event.pressed) {
        FUNC1(_META);
        FUNC5(_META, _SYMB, _GAME);
      } else {
        FUNC0(_META);
        FUNC5(_META, _SYMB, _GAME);
      }
      return false;
      break;
    case SYMB:
      if (record->event.pressed) {
        FUNC1(_SYMB);
        FUNC5(_META, _SYMB, _GAME);
      } else {
        FUNC0(_SYMB);
        FUNC5(_META, _SYMB, _GAME);
      }
      return false;
      break;
    case GAME:
      if (record->event.pressed) {
        FUNC1(_GAME);
      } else {
        FUNC0(_GAME);
      }
      return false;
      break;
    case EISU:
      if (record->event.pressed) {
        FUNC3(KC_LANG2);
      } else {
        FUNC4(KC_LANG2);
      }
      return false;
      break;
    case KANA:
      if (record->event.pressed) {
        FUNC3(KC_LANG1);
      } else {
        FUNC4(KC_LANG1);
      }
      return false;
      break;
  }
  return true;
}