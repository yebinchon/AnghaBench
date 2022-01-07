
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SystemInit () ;
 unsigned int __bss_section_table_end ;
 unsigned int __data_section_table ;
 unsigned int __data_section_table_end ;
 int __libc_init_array () ;
 int __main () ;
 int bss_init (unsigned int,unsigned int) ;
 int data_init (unsigned int,unsigned int,unsigned int) ;
 scalar_t__ g_pfnVectors ;
 int main () ;

__attribute__ ((section(".after_vectors")))
void
ResetISR(void) {




    unsigned int LoadAddr, ExeAddr, SectionLen;
    unsigned int *SectionTableAddr;


    SectionTableAddr = &__data_section_table;


    while (SectionTableAddr < &__data_section_table_end) {
        LoadAddr = *SectionTableAddr++;
        ExeAddr = *SectionTableAddr++;
        SectionLen = *SectionTableAddr++;
        data_init(LoadAddr, ExeAddr, SectionLen);
    }


    while (SectionTableAddr < &__bss_section_table_end) {
        ExeAddr = *SectionTableAddr++;
        SectionLen = *SectionTableAddr++;
        bss_init(ExeAddr, SectionLen);
    }
    unsigned int * pSCB_VTOR = (unsigned int *) 0xE000ED08;
    if ((unsigned int *)g_pfnVectors!=(unsigned int *) 0x00000000) {

        *pSCB_VTOR = (unsigned int)g_pfnVectors;
    }
    main();





    while (1) {
        ;
    }
}
