
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {unsigned long CPACR; } ;


 TYPE_1__* SCB ;
 int _ebss ;
 int _edata ;
 int _sbss ;
 int _sdata ;
 int _sidata ;
 int isr_vector ;
 int samd_init () ;
 int samd_main () ;

void Reset_Handler(void) {




    __asm volatile ("ldr r0, =_estack");
    __asm volatile ("mov sp, r0");


    for (uint32_t *src = &_sidata, *dest = &_sdata; dest < &_edata;) {
        *dest++ = *src++;
    }

    for (uint32_t *dest = &_sbss; dest < &_ebss;) {
        *dest++ = 0;
    }
    *((volatile uint32_t*)0xe000ed08) = (uint32_t)&isr_vector;


    *((volatile uint32_t*)0xe000ed14) |= 1 << 9;


    samd_init();


    samd_main();


    for (;;) {
    }
}
