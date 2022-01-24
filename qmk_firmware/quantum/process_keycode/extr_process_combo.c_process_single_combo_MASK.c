#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_6__ {scalar_t__ pressed; } ;
struct TYPE_7__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;
typedef  int int8_t ;
struct TYPE_8__ {scalar_t__* keys; int /*<<< orphan*/  keycode; } ;
typedef  TYPE_3__ combo_t ;

/* Variables and functions */
 scalar_t__ ALL_COMBO_KEYS_ARE_DOWN ; 
 scalar_t__ COMBO_END ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int drop_buffer ; 
 int is_active ; 
 scalar_t__ FUNC2 (scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC4(combo_t *combo, uint16_t keycode, keyrecord_t *record) {
    uint8_t count = 0;
    uint8_t index = -1;
    /* Find index of keycode and number of combo keys */
    for (const uint16_t *keys = combo->keys;; ++count) {
        uint16_t key = FUNC2(&keys[count]);
        if (keycode == key) index = count;
        if (COMBO_END == key) break;
    }

    /* Continue processing if not a combo key */
    if (-1 == (int8_t)index) return false;

    bool is_combo_active = is_active;

    if (record->event.pressed) {
        FUNC0(index);

        if (is_combo_active) {
            if (ALL_COMBO_KEYS_ARE_DOWN) { /* Combo was pressed */
                FUNC3(combo->keycode, true);
                drop_buffer = true;
            }
        }
    } else {
        if (ALL_COMBO_KEYS_ARE_DOWN) { /* Combo was released */
            FUNC3(combo->keycode, false);
        } else {
            /* continue processing without immediately returning */
            is_combo_active = false;
        }

        FUNC1(index);
    }

    return is_combo_active;
}