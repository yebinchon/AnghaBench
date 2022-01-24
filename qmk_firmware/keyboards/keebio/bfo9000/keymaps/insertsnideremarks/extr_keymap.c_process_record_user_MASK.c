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
#define  COLEMAK 131 
#define  COLEMAKGM 130 
#define  QWERTY 129 
#define  QWERTYGM 128 
 unsigned long _ADJUST ; 
 unsigned long _ADJUST2 ; 
 unsigned long _COLEMAK ; 
 unsigned long _COLEMAKGM ; 
 unsigned long _FUNCTION ; 
 unsigned long _FUNCTION2 ; 
 unsigned long _NUMBERS ; 
 unsigned long _NUMBERS2 ; 
 unsigned long _NUMPAD ; 
 unsigned long _QWERTY ; 
 unsigned long _QWERTYGM ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 

bool FUNC2(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
	case COLEMAK:
      if (record->event.pressed) {
        FUNC0(1UL << _COLEMAK);
//        persistent_default_layer_set(1UL << _COLEMAK);
        FUNC1 ( _QWERTY);
        FUNC1 ( _NUMBERS);
        FUNC1 ( _NUMBERS2);
        FUNC1 ( _FUNCTION);
        FUNC1 ( _FUNCTION2);
        FUNC1 ( _NUMPAD);
        FUNC1 ( _COLEMAKGM);
        FUNC1 ( _QWERTYGM);
        FUNC1 ( _ADJUST);
        FUNC1 ( _ADJUST2);
	  }
      return false;
      break;
    case QWERTY:
      if (record->event.pressed) {
        FUNC0(1UL << _QWERTY);
//        persistent_default_layer_set(1UL << _QWERTY);
        FUNC1 ( _COLEMAK);
        FUNC1 ( _NUMBERS);
        FUNC1 ( _NUMBERS2);
        FUNC1 ( _FUNCTION);
        FUNC1 ( _FUNCTION2);
        FUNC1 ( _NUMPAD);
        FUNC1 ( _COLEMAKGM);
        FUNC1 ( _QWERTYGM);
        FUNC1 ( _ADJUST);
        FUNC1 ( _ADJUST2);
      }
      return false;
      break;
    case COLEMAKGM:
      if (record->event.pressed) {
        FUNC0(1UL << _COLEMAKGM);
        FUNC1 ( _QWERTY);
        FUNC1 ( _COLEMAK);
        FUNC1 ( _NUMBERS);
        FUNC1 ( _NUMBERS2);
        FUNC1 ( _FUNCTION);
        FUNC1 ( _FUNCTION2);
        FUNC1 ( _NUMPAD);
        FUNC1 ( _QWERTYGM);
        FUNC1 ( _ADJUST);
        FUNC1 ( _ADJUST2);
	  }
      return false;
      break;
    case QWERTYGM:
      if (record->event.pressed) {
        FUNC0(1UL << _QWERTYGM);
        FUNC1 ( _QWERTY);
        FUNC1 ( _COLEMAK);
        FUNC1 ( _NUMBERS);
        FUNC1 ( _NUMBERS2);
        FUNC1 ( _FUNCTION);
        FUNC1 ( _FUNCTION2);
        FUNC1 ( _NUMPAD);
        FUNC1 ( _COLEMAKGM);
        FUNC1 ( _ADJUST);
        FUNC1 ( _ADJUST2);
	  }
      return false;
      break;
  }
  return true;
}