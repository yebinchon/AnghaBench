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
typedef  int uint32_t ;
struct TYPE_5__ {int CFSR; int HFSR; int MMFAR; int BFAR; } ;
struct TYPE_4__ {int r0; int r1; int r2; int r3; int r12; int lr; int pc; int xpsr; } ;
typedef  TYPE_1__ ExceptionRegisters_t ;

/* Variables and functions */
 TYPE_2__* SCB ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int _estack ; 
 int /*<<< orphan*/  _ram_end ; 
 int /*<<< orphan*/  _ram_start ; 
 int /*<<< orphan*/  _sstack ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  pyb_hard_fault_debug ; 
 scalar_t__ pyb_usb_flags ; 

void FUNC5(ExceptionRegisters_t *regs) {
    if (!pyb_hard_fault_debug) {
        FUNC2();
    }

    #if MICROPY_HW_ENABLE_USB
    // We need to disable the USB so it doesn't try to write data out on
    // the VCP and then block indefinitely waiting for the buffer to drain.
    pyb_usb_flags = 0;
    #endif

    FUNC1("HardFault\r\n");

    FUNC4("R0    ", regs->r0);
    FUNC4("R1    ", regs->r1);
    FUNC4("R2    ", regs->r2);
    FUNC4("R3    ", regs->r3);
    FUNC4("R12   ", regs->r12);
    FUNC4("SP    ", (uint32_t)regs);
    FUNC4("LR    ", regs->lr);
    FUNC4("PC    ", regs->pc);
    FUNC4("XPSR  ", regs->xpsr);

    #if __CORTEX_M >= 3
    uint32_t cfsr = SCB->CFSR;

    print_reg("HFSR  ", SCB->HFSR);
    print_reg("CFSR  ", cfsr);
    if (cfsr & 0x80) {
        print_reg("MMFAR ", SCB->MMFAR);
    }
    if (cfsr & 0x8000) {
        print_reg("BFAR  ", SCB->BFAR);
    }
    #endif

    if ((void*)&_ram_start <= (void*)regs && (void*)regs < (void*)&_ram_end) {
        FUNC1("Stack:\r\n");
        uint32_t *stack_top = &_estack;
        if ((void*)regs < (void*)&_sstack) {
            // stack not in static stack area so limit the amount we print
            stack_top = (uint32_t*)regs + 32;
        }
        for (uint32_t *sp = (uint32_t*)regs; sp < stack_top; ++sp) {
            FUNC3("  ", (uint32_t)sp, *sp);
        }
    }

    /* Go to infinite loop when Hard Fault exception occurs */
    while (1) {
        FUNC0("HardFault");
    }
}