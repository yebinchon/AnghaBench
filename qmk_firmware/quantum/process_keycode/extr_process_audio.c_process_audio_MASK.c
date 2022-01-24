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
typedef  scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
 scalar_t__ AU_OFF ; 
 scalar_t__ AU_ON ; 
 scalar_t__ AU_TOG ; 
 scalar_t__ MUV_DE ; 
 scalar_t__ MUV_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  voice_change_song ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

bool FUNC6(uint16_t keycode, keyrecord_t *record) {
    if (keycode == AU_ON && record->event.pressed) {
        FUNC2();
        return false;
    }

    if (keycode == AU_OFF && record->event.pressed) {
        FUNC1();
        return false;
    }

    if (keycode == AU_TOG && record->event.pressed) {
        if (FUNC3()) {
            FUNC1();
        } else {
            FUNC2();
        }
        return false;
    }

    if (keycode == MUV_IN && record->event.pressed) {
        FUNC5();
        FUNC0(voice_change_song);
        return false;
    }

    if (keycode == MUV_DE && record->event.pressed) {
        FUNC4();
        FUNC0(voice_change_song);
        return false;
    }

    return true;
}