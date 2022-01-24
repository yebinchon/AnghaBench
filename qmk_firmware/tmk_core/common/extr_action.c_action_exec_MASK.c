#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ keyrecord_t ;
typedef  int /*<<< orphan*/  keyevent_t ;

/* Variables and functions */
 int /*<<< orphan*/  FAUXCLICKY_ACTION_PRESS ; 
 int /*<<< orphan*/  FAUXCLICKY_ACTION_RELEASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ONESHOT_OTHER_KEY_PRESSED ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 () ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  retro_tapping_counter ; 

void FUNC15(keyevent_t event) {
    if (!FUNC0(event)) {
        FUNC8("\n---- action_exec: start -----\n");
        FUNC8("EVENT: ");
        FUNC6(event);
        FUNC9();
#ifdef RETRO_TAPPING
        retro_tapping_counter++;
#endif
    }

#ifdef FAUXCLICKY_ENABLE
    if (IS_PRESSED(event)) {
        FAUXCLICKY_ACTION_PRESS;
    }
    if (IS_RELEASED(event)) {
        FAUXCLICKY_ACTION_RELEASE;
    }
    fauxclicky_check();
#endif

#ifdef SWAP_HANDS_ENABLE
    if (!IS_NOEVENT(event)) {
        process_hand_swap(&event);
    }
#endif

    keyrecord_t record = {.event = event};

#if (defined(ONESHOT_TIMEOUT) && (ONESHOT_TIMEOUT > 0))
    if (has_oneshot_layer_timed_out()) {
        clear_oneshot_layer_state(ONESHOT_OTHER_KEY_PRESSED);
    }
    if (has_oneshot_mods_timed_out()) {
        clear_oneshot_mods();
    }
#endif

#ifndef NO_ACTION_TAPPING
    FUNC3(record);
#else
    process_record(&record);
    if (!IS_NOEVENT(record.event)) {
        dprint("processed: ");
        debug_record(record);
        dprintln();
    }
#endif
}