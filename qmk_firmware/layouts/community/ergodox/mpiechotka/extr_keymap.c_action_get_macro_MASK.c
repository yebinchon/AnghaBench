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
 int /*<<< orphan*/  END ; 
 int ENT ; 
 int /*<<< orphan*/  KC_LGUI ; 
 int /*<<< orphan*/  KC_RSFT ; 
#define  LWIN 132 
 int /*<<< orphan*/  const* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* MACRO_NONE ; 
#define  PC1 131 
#define  PC2 130 
#define  PC3 129 
#define  PC4 128 
 int SLCK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

const macro_t *FUNC5(keyrecord_t *record, uint8_t id, uint8_t opt)
{
    switch(id) {
    case 0:
        if (record->event.pressed) {
            FUNC3(KC_RSFT);
        } else {
            FUNC4(KC_RSFT);
        }
        break;
    case LWIN:
        if (record->event.pressed) {
             FUNC3(KC_RSFT);
             FUNC4(KC_RSFT);
             FUNC3(KC_LGUI);
        } else {
             FUNC4(KC_LGUI);
        }
        break;
    case PC1:
        if (!record->event.pressed) {
             return FUNC0(FUNC1(SLCK), FUNC2(50), FUNC1(SLCK), FUNC2(50), FUNC1(1), FUNC2(50), FUNC1(ENT), END);
        }
        break;
    case PC2:
        if (!record->event.pressed) {
             return FUNC0(FUNC1(SLCK), FUNC2(50), FUNC1(SLCK), FUNC2(50), FUNC1(2), FUNC2(50), FUNC1(ENT), END);
        }
        break;
    case PC3:
        if (!record->event.pressed) {
             return FUNC0(FUNC1(SLCK), FUNC2(50), FUNC1(SLCK), FUNC2(50), FUNC1(3), FUNC2(50), FUNC1(ENT), END);
        }
        break;
    case PC4:
        if (!record->event.pressed) {
             return FUNC0(FUNC1(SLCK), FUNC2(50), FUNC1(SLCK), FUNC2(50), FUNC1(4), FUNC2(50), FUNC1(ENT), END);
        }
        break;
    }
    return MACRO_NONE;
}