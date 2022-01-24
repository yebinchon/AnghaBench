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
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
#define  CLOUD9_GOTO_LINE 133 
#define  CLOUD9_GOTO_SYMBOL 132 
#define  CLOUD9_NAVIGATE 131 
#define  CLOUD9_TAB_CLOSE 130 
#define  CLOUD9_TAB_LEFT 129 
#define  CLOUD9_TAB_RIGHT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

bool FUNC4(uint16_t keycode, keyrecord_t *record) {
  if(record->event.pressed) {
    switch (keycode) {
		// Cloud9 macros
		case CLOUD9_TAB_LEFT:
            FUNC0(FUNC2("["));
            return true;
			break;
		case CLOUD9_TAB_RIGHT:
            FUNC0(FUNC2("]"));
            return true;
			break;
		case CLOUD9_TAB_CLOSE:
            FUNC0(FUNC1("w"));
            return true;
			break;
		case CLOUD9_GOTO_SYMBOL:
            FUNC0(FUNC3(FUNC2("e")));
            return true;
			break;
		case CLOUD9_GOTO_LINE:
            FUNC0(FUNC2("g"));
            return true;
			break;
		case CLOUD9_NAVIGATE:
            FUNC0(FUNC2("e"));
            return true;
			break;
	}
  }

  return true;
}