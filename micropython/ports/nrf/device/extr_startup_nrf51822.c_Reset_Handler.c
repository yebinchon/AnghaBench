
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int SystemInit () ;
 int _ebss ;
 int _edata ;
 int _sbss ;
 int _sdata ;
 int _sidata ;
 int _start () ;

void Reset_Handler(void) {
    uint32_t * ram_on_addr = (uint32_t *)0x40000524;
    uint32_t * ram_on_b_addr = (uint32_t *)0x40000554;

    *ram_on_addr = 3;
    *ram_on_b_addr = 3;






    uint32_t * p_src = &_sidata;
    uint32_t * p_dest = &_sdata;

    while (p_dest < &_edata) {
      *p_dest++ = *p_src++;
    }

    uint32_t * p_bss = &_sbss;
    uint32_t * p_bss_end = &_ebss;
    while (p_bss < p_bss_end) {
        *p_bss++ = 0ul;
    }

    SystemInit();
    _start();
}
