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
#define  DLEFT 130 
#define  DRIGHT 129 
#define  PSCREEN_APP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  X_LEFT ; 
 int /*<<< orphan*/  X_PSCREEN ; 
 int /*<<< orphan*/  X_RIGHT ; 

bool FUNC4(uint16_t keycode, keyrecord_t *record) {
    switch (keycode)
    {
        case DLEFT:
            if (record->event.pressed)
                FUNC0(FUNC2(FUNC1(FUNC3(X_LEFT))));
            return true;
        case DRIGHT:
            if (record->event.pressed)
                FUNC0(FUNC2(FUNC1(FUNC3(X_RIGHT))));
            return true;
        case PSCREEN_APP:
            if (record->event.pressed)
                FUNC0(FUNC1(FUNC3(X_PSCREEN)));
            return true;

        default:
            return false;
    }
}