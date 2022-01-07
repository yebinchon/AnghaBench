
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int CFSR; int HFSR; int MMFAR; int BFAR; } ;
struct TYPE_4__ {int r0; int r1; int r2; int r3; int r12; int lr; int pc; int xpsr; } ;
typedef TYPE_1__ ExceptionRegisters_t ;


 TYPE_2__* SCB ;
 int __fatal_error (char*) ;
 int _estack ;
 int _ram_end ;
 int _ram_start ;
 int _sstack ;
 int mp_hal_stdout_tx_str (char*) ;
 int powerctrl_mcu_reset () ;
 int print_hex_hex (char*,int,int) ;
 int print_reg (char*,int) ;
 int pyb_hard_fault_debug ;
 scalar_t__ pyb_usb_flags ;

void HardFault_C_Handler(ExceptionRegisters_t *regs) {
    if (!pyb_hard_fault_debug) {
        powerctrl_mcu_reset();
    }







    mp_hal_stdout_tx_str("HardFault\r\n");

    print_reg("R0    ", regs->r0);
    print_reg("R1    ", regs->r1);
    print_reg("R2    ", regs->r2);
    print_reg("R3    ", regs->r3);
    print_reg("R12   ", regs->r12);
    print_reg("SP    ", (uint32_t)regs);
    print_reg("LR    ", regs->lr);
    print_reg("PC    ", regs->pc);
    print_reg("XPSR  ", regs->xpsr);
    if ((void*)&_ram_start <= (void*)regs && (void*)regs < (void*)&_ram_end) {
        mp_hal_stdout_tx_str("Stack:\r\n");
        uint32_t *stack_top = &_estack;
        if ((void*)regs < (void*)&_sstack) {

            stack_top = (uint32_t*)regs + 32;
        }
        for (uint32_t *sp = (uint32_t*)regs; sp < stack_top; ++sp) {
            print_hex_hex("  ", (uint32_t)sp, *sp);
        }
    }


    while (1) {
        __fatal_error("HardFault");
    }
}
