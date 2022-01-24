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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  KC_LALT 129 
#define  KC_NLCK 128 
 int /*<<< orphan*/  _ADJUST ; 
 int /*<<< orphan*/  _ALT ; 
 int /*<<< orphan*/  _NAV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int numlock_down ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

bool FUNC5(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
	  case KC_NLCK:
      if (record->event.pressed) {
		  numlock_down = true;
		  if (FUNC0(_ALT)) {
			  FUNC2(_ADJUST);
		  }
	  } else{
		if(!FUNC0(_ADJUST)) {
		  if (!FUNC0(_NAV)){
			  FUNC3();
		    FUNC2(_NAV);
		  } else {
			  FUNC4();
		    FUNC1(_NAV);
		  }
		} else {
			FUNC1(_ADJUST);
		}
		numlock_down = false;
	  }
      return false;
      break;
	  case KC_LALT:
      if (record->event.pressed) {
		  if (numlock_down) {
			  FUNC2(_ADJUST);
		  } else {
			  FUNC2(_ALT);
		  }
	  } else {
		  if(FUNC0(_ADJUST)) {
		      FUNC1(_ADJUST);
		  } else {
			  FUNC1(_ALT);
		  }
	  }
	  // Allow normal processing of ALT?
      return false;
      break;
  }
  return true;
}