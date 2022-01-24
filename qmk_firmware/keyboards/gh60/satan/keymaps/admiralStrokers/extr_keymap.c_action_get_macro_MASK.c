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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  macro_t ;
struct TYPE_4__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  END ; 
 int /*<<< orphan*/  LCTL ; 
 int /*<<< orphan*/  LSFT ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  const* MACRO_NONE ; 
 int /*<<< orphan*/  RALT ; 
 int /*<<< orphan*/  RCTL ; 
 int /*<<< orphan*/  RSFT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  key_timer ; 
 int /*<<< orphan*/  FUNC5 () ; 

const macro_t *FUNC6(keyrecord_t *record, uint8_t id, uint8_t opt) { // MACRODOWN only works in this function
    switch(id) {
        case 0: //MAC0 - Hold for lshift and { on tap
					if (record->event.pressed) {
						key_timer = FUNC5();
						return FUNC1(FUNC0(LSFT), END );
					} else {
						return FUNC4() ? FUNC1(FUNC3(LSFT),FUNC0(RALT),FUNC2(7),FUNC3(RALT),END): FUNC1(FUNC3(LSFT),END);
					}; break;
			  case 1:	//MAC1 - Hold for rshift and } on tap
					if (record->event.pressed) {
						key_timer = FUNC5();
						return FUNC1(FUNC0(RSFT), END );
					} else {
						return FUNC4()  ? FUNC1(FUNC3(RSFT),FUNC0(RALT),FUNC2(0),FUNC3(RALT),END): FUNC1(FUNC3(RSFT),END);
					}; break;
        case 2: //MAC2 - Hold for lctrl and [ on tap
						if (record->event.pressed) {
							key_timer = FUNC5();
							return FUNC1(FUNC0(LCTL), END );
						} else {return FUNC4() ? FUNC1(FUNC3(LCTL),FUNC0(RALT),FUNC2(8),FUNC3(RALT),END):FUNC1(FUNC3(LCTL),END);
						}; break;
       	case 3: //MAC3 - Hold for rctrl and ] on tap
						if (record->event.pressed) {
							key_timer = FUNC5();
							return FUNC1(FUNC0(RCTL), END );
						} else {
							return FUNC4() ? FUNC1(FUNC3(RCTL),FUNC0(RALT),FUNC2(9),FUNC3(RALT),END):FUNC1(FUNC3(RCTL),END);
						}; break;
      	case 4: //MAC4 reserved for later.
						if (record->event.pressed) { } else { }; break;
       	case 5: //MAC5 reserved for later.
						if (record->event.pressed) { } else { }; break;
       	case 6: //MAC6 reserved for later.
						if (record->event.pressed) { } else { }; break;
    } return MACRO_NONE;
}