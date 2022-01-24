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
#define  SWITCH_FN 129 
#define  SWITCH_FS 128 
 int /*<<< orphan*/  _FN ; 
 int /*<<< orphan*/  _FS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lt12_timer ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

bool FUNC6(uint16_t keycode, keyrecord_t *record) {
    switch (keycode) {
        case SWITCH_FN:
        if (record->event.pressed) {
            lt12_timer = FUNC5();
            FUNC3(_FN);
            FUNC1();
        } else {
            if (FUNC4(lt12_timer) > 200) {  
            FUNC2(_FN);
            FUNC0();
            }
        }
        return false;
        break;
        case SWITCH_FS:
        if (record->event.pressed) {
            lt12_timer = FUNC5();
            FUNC3(_FS);
            FUNC1();
        } else {
            if (FUNC4(lt12_timer) > 200) {  
            FUNC2(_FS);
            FUNC0();
            }
        }
        return false;
        break;
    }
    return true;
}