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
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DOWN ; 
 int /*<<< orphan*/  END ; 
 int /*<<< orphan*/  LCTL ; 
 int LEFT ; 
 int /*<<< orphan*/  LGUI ; 
 int /*<<< orphan*/  LSFT ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  const* MACRO_NONE ; 
 int RGHT ; 
 int SPC ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int UP ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 

const macro_t *FUNC5(keyrecord_t *record, uint8_t id, uint8_t opt) {
    if (record->event.pressed) {
        switch(id) {
            case 0:
                return FUNC1(FUNC0(LGUI), FUNC0(LSFT), FUNC2(3), FUNC3(LSFT), FUNC3(LGUI), END);                   // Mac print screen
            case 1:
                return FUNC1(FUNC0(LGUI), FUNC0(LSFT), FUNC2(4), FUNC3(LSFT), FUNC3(LGUI), END);                   // Mac print area
            case 2:
                return FUNC1(FUNC0(LCTL), FUNC0(LSFT), FUNC0(LGUI), FUNC2(3), FUNC0(LCTL), FUNC0(LSFT), FUNC0(LGUI), END); // Mac print screen to clipboard
            case 3:
                return FUNC1(FUNC0(LCTL), FUNC0(LSFT), FUNC0(LGUI), FUNC2(4), FUNC0(LCTL), FUNC0(LSFT), FUNC0(LGUI), END); // Mac print area to clipboard
            case 4:
                return FUNC1(FUNC0(LCTL), FUNC2(UP), FUNC3(LCTL), END);                                    // Mac mission control
            case 5:
                return FUNC1(FUNC0(LCTL), FUNC2(DOWN), FUNC3(LCTL), END);                                  // Mac app windows
            case 6:
                return FUNC1(FUNC0(LGUI), FUNC2(SPC), FUNC3(LGUI), END);                                   // Mac spotlight search
            case 7:
                return FUNC1(FUNC0(LCTL), FUNC2(LEFT), FUNC3(LCTL), END);                                  // Mac mission left
            case 8:
                return FUNC1(FUNC0(LCTL), FUNC2(RGHT), FUNC3(LCTL), END);                                  // Mac mission right
            case 9:
                FUNC4(0xff, 0xff, 0xff);                                             // White rgb shortcut
                break;
        }
    }
    return MACRO_NONE;
}