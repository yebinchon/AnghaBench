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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  DLEFT 129 
#define  DRIGHT 128 
 int /*<<< orphan*/  END ; 
 int /*<<< orphan*/  LCTL ; 
 int /*<<< orphan*/  LEFT ; 
 int /*<<< orphan*/  LGUI ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* MACRO_NONE ; 
 int /*<<< orphan*/  RIGHT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

const macro_t *FUNC4(keyrecord_t *record, uint8_t id, uint8_t opt) {
    switch(id) {
        case DLEFT:
            if (record->event.pressed) { // Windows move desktop left
                return FUNC1(FUNC0(LCTL), FUNC0(LGUI), FUNC2(LEFT), FUNC3(LGUI), FUNC3(LCTL), END);
            }
            break;
        case DRIGHT:
            if (record->event.pressed) { // Windows move desktop right
                return FUNC1(FUNC0(LCTL), FUNC0(LGUI), FUNC2(RIGHT), FUNC3(LGUI), FUNC3(LCTL), END);
            }
            break;
    }
    return MACRO_NONE;
}