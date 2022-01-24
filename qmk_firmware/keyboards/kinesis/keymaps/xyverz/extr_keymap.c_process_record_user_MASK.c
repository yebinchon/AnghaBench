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
#define  COLEMAK 130 
#define  DVORAK 129 
#define  QWERTY 128 
 int /*<<< orphan*/  _COLEMAK ; 
 int /*<<< orphan*/  _DVORAK ; 
 int /*<<< orphan*/  _QWERTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

bool FUNC1(uint16_t keycode, keyrecord_t *record) {
    if (record->event.pressed) {
        switch (keycode) {
            case DVORAK:
                FUNC0(_DVORAK);
                return false;
            case QWERTY:
                FUNC0(_QWERTY);
                return false;
            case COLEMAK:
                FUNC0(_COLEMAK);
                return false;
        }
    }
    return true;
}