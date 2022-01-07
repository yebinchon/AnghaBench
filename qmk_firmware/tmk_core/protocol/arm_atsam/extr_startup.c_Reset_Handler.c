
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int VTOR; int CPACR; } ;


 int BOOTLOADER_MAGIC ;
 int* MAGIC_ADDR ;
 TYPE_1__* SCB ;
 int SCB_VTOR_TBLOFF_Msk ;
 int __DSB () ;
 int __ISB () ;
 int __libc_init_array () ;
 int __set_MSP (int) ;
 int _erelocate ;
 int _etext ;
 int _ezero ;
 int _sfixed ;
 int _srelocate ;
 int _szero ;
 int main () ;

void Reset_Handler(void) {
    uint32_t *pSrc, *pDest;


    pSrc = &_etext;
    pDest = &_srelocate;

    if (pSrc != pDest) {
        for (; pDest < &_erelocate;) {
            *pDest++ = *pSrc++;
        }
    }


    for (pDest = &_szero; pDest < &_ezero;) {
        *pDest++ = 0;
    }


    pSrc = (uint32_t *)&_sfixed;
    SCB->VTOR = ((uint32_t)pSrc & SCB_VTOR_TBLOFF_Msk);
    __libc_init_array();


    main();


    while (1)
        ;
}
