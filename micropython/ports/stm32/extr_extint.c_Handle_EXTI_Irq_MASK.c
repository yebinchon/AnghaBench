#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  ret_val; } ;
typedef  TYPE_1__ nlr_buf_t ;
typedef  scalar_t__ mp_obj_t ;

/* Variables and functions */
 int EXTI_NUM_VECTORS ; 
 int /*<<< orphan*/  MICROPY_ERROR_PRINTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PENDSV_DISPATCH_CYW43 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 scalar_t__ mp_const_none ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  mp_plat_print ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,void (*) ()) ; 
 int /*<<< orphan*/  pyb_extint_callback ; 
 scalar_t__* pyb_extint_callback_arg ; 
 int /*<<< orphan*/ * pyb_extint_hard_irq ; 
 int /*<<< orphan*/  pyb_pin_WL_HOST_WAKE ; 

void FUNC16(uint32_t line) {
    if (FUNC3(1 << line)) {
        FUNC2(1 << line);
        if (line < EXTI_NUM_VECTORS) {
            mp_obj_t *cb = &FUNC1(pyb_extint_callback)[line];
            #if MICROPY_PY_NETWORK_CYW43 && defined(pyb_pin_WL_HOST_WAKE)
            if (pyb_extint_callback_arg[line] == MP_OBJ_FROM_PTR(pyb_pin_WL_HOST_WAKE)) {
                extern void (*cyw43_poll)(void);
                if (cyw43_poll) {
                    pendsv_schedule_dispatch(PENDSV_DISPATCH_CYW43, cyw43_poll);
                }
                return;
            }
            #endif
            if (*cb != mp_const_none) {
                // If it's a soft IRQ handler then just schedule callback for later
                if (!pyb_extint_hard_irq[line]) {
                    FUNC11(*cb, pyb_extint_callback_arg[line]);
                    return;
                }

                FUNC10();
                // When executing code within a handler we must lock the GC to prevent
                // any memory allocations.  We must also catch any exceptions.
                FUNC5();
                nlr_buf_t nlr;
                if (FUNC14(&nlr) == 0) {
                    FUNC7(*cb, pyb_extint_callback_arg[line]);
                    FUNC13();
                } else {
                    // Uncaught exception; disable the callback so it doesn't run again.
                    *cb = mp_const_none;
                    FUNC4(line);
                    FUNC9(MICROPY_ERROR_PRINTER, "uncaught exception in ExtInt interrupt handler line %u\n", (unsigned int)line);
                    FUNC8(&mp_plat_print, FUNC0(nlr.ret_val));
                }
                FUNC6();
                FUNC12();
            }
        }
    }
}