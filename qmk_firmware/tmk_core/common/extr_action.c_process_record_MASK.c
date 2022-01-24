#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  key; int /*<<< orphan*/  pressed; } ;
struct TYPE_6__ {TYPE_5__ event; } ;
typedef  TYPE_1__ keyrecord_t ;
typedef  int /*<<< orphan*/  action_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_5__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9(keyrecord_t *record) {
    if (FUNC0(record->event)) {
        return;
    }

    if (!FUNC7(record)) return;

    action_t action = FUNC8(record->event.pressed, record->event.key);
    FUNC3("ACTION: ");
    FUNC1(action);
#ifndef NO_ACTION_LAYER
    FUNC3(" layer_state: ");
    FUNC5();
    FUNC3(" default_layer_state: ");
    FUNC2();
#endif
    FUNC4();

    FUNC6(record, action);
}