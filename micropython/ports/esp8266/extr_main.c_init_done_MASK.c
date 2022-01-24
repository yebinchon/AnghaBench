#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  MODEM_SLEEP_T ; 
 scalar_t__ NULL_MODE ; 
 scalar_t__ PYEXEC_MODE_RAW_REPL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ pyexec_mode_kind ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 () ; 

void FUNC11(void) {
    // Configure sleep, and put the radio to sleep if no interfaces are active
    FUNC9(MODEM_SLEEP_T);
    if (FUNC10() == NULL_MODE) {
        FUNC8();
        FUNC7(0xfffffff);
    }

    #if MICROPY_REPL_EVENT_DRIVEN
    uart_task_init();
    #endif
    FUNC1();
    FUNC0("\r\n");
    #if MICROPY_REPL_EVENT_DRIVEN
    pyexec_event_repl_init();
    #endif

    #if !MICROPY_REPL_EVENT_DRIVEN
soft_reset:
    for (;;) {
        if (pyexec_mode_kind == PYEXEC_MODE_RAW_REPL) {
            if (FUNC4() != 0) {
                break;
            }
        } else {
            if (FUNC3() != 0) {
                break;
            }
        }
    }
    FUNC5();
    goto soft_reset;
    #endif
}