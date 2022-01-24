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
typedef  scalar_t__ uint8_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ TAPPING_TERM ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ sc_last ; 
 int /*<<< orphan*/  sc_mods ; 
 int /*<<< orphan*/  sc_timer ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(keyrecord_t *record, uint8_t holdMod, uint8_t tapMod, uint8_t keycode) {
    if (record->event.pressed) {
        sc_last  = holdMod;
        sc_timer = FUNC8();
#ifdef SPACE_CADET_MODIFIER_CARRYOVER
        sc_mods = get_mods();
#endif
        if (FUNC0(holdMod)) {
            FUNC4(FUNC1(holdMod));
        }
    } else {
        if (sc_last == holdMod && FUNC7(sc_timer) < TAPPING_TERM) {
            if (holdMod != tapMod) {
                if (FUNC0(holdMod)) {
                    FUNC9(FUNC1(holdMod));
                }
                if (FUNC0(tapMod)) {
                    FUNC4(FUNC1(tapMod));
                }
            }
#ifdef SPACE_CADET_MODIFIER_CARRYOVER
            set_weak_mods(sc_mods);
#endif
            FUNC6(keycode);
#ifdef SPACE_CADET_MODIFIER_CARRYOVER
            clear_weak_mods();
#endif
            if (FUNC0(tapMod)) {
                FUNC9(FUNC1(tapMod));
            }
        } else {
            if (FUNC0(holdMod)) {
                FUNC9(FUNC1(holdMod));
            }
        }
    }
}