#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_2__ {int mods; } ;

/* Variables and functions */
 int /*<<< orphan*/  KC_LSFT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 TYPE_1__* keyboard_report ; 
 int /*<<< orphan*/  layer_state ; 

void FUNC9(void) {

    uint8_t layer = FUNC1(layer_state);

    FUNC2();
    FUNC3();
    FUNC5();
    FUNC7();
    switch (layer) {
      // TODO: Make this relevant to the ErgoDox EZ.
        case 1:
            FUNC8();
            break;
        case 2:
            FUNC6();
            break;
        default:
            // none
            break;
    }
    if (keyboard_report->mods & FUNC0(KC_LSFT)) {
        FUNC4 ();
    }
}