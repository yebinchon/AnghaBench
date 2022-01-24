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
struct TYPE_2__ {int mods; } ;

/* Variables and functions */
 int /*<<< orphan*/  KC_RSFT ; 
 unsigned long MDIA ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long SYMB ; 
 int USB_LED_CAPS_LOCK ; 
 scalar_t__ caps_shift ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 () ; 
 TYPE_1__* keyboard_report ; 
 unsigned long layer_state ; 

void FUNC8(void) {
    // shift or caps lock turns on red light
    if(caps_shift || (keyboard_report->mods & FUNC0(KC_RSFT)) || (FUNC7() & (1<<USB_LED_CAPS_LOCK))) {
        FUNC2();
    } else {
        FUNC1();
    }

    // Symbol layer turns on green light
    if(layer_state & (1UL<<SYMB)) {
        FUNC4();
    } else {
        FUNC3();
    }

    // Media layer turns on blue light
    if(layer_state & (1UL<<MDIA)) {
        FUNC6();
    } else {
        FUNC5();
    }
}