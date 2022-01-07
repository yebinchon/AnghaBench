
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((naked))
void HardFault_Handler(void) {
    __asm volatile(
    " mov r0, lr    \n"
    " lsr r0, r0, #3 \n"
    " mrs r0, msp   \n"
    " bcc .use_msp  \n"
    " mrs r0, psp   \n"
    " .use_msp:     \n"
    " b HardFault_C_Handler \n"
    );
}
