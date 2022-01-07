
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTOHASH_Init () ;
 int FAULT_SYSTICK ;
 int MAP_IntEnable (int ) ;
 int MAP_IntMasterEnable () ;
 int MAP_IntVTableBaseSet (unsigned long) ;
 int PRCMCC3200MCUInit () ;
 int PRCMClearSpecialBit (int ) ;
 int PRCM_FIRST_BOOT_BIT ;
 int PRCM_SAFE_BOOT_BIT ;
 int antenna_init0 () ;
 int * g_pfnVectors ;
 int mperror_bootloader_check_reset_cause () ;
 int mperror_init0 () ;

__attribute__((used)) static void bootmgr_board_init(void) {

    MAP_IntVTableBaseSet((unsigned long)&g_pfnVectors[0]);


    MAP_IntMasterEnable();
    MAP_IntEnable(FAULT_SYSTICK);


    PRCMCC3200MCUInit();



    PRCMClearSpecialBit(PRCM_SAFE_BOOT_BIT);
    PRCMClearSpecialBit(PRCM_FIRST_BOOT_BIT);


    mperror_bootloader_check_reset_cause();







    CRYPTOHASH_Init();


    mperror_init0();
}
