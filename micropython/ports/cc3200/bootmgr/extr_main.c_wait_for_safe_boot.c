
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ActiveImg; int PrevImg; } ;
typedef TYPE_1__ sBootInfo_t ;


 int BOOTMGR_WAIT_SAFE_MODE_0_MS ;
 int BOOTMGR_WAIT_SAFE_MODE_1_BLINK_MS ;
 int BOOTMGR_WAIT_SAFE_MODE_1_MS ;
 int BOOTMGR_WAIT_SAFE_MODE_2_BLINK_MS ;
 int BOOTMGR_WAIT_SAFE_MODE_2_MS ;
 int BOOTMGR_WAIT_SAFE_MODE_3_BLINK_MS ;
 int BOOTMGR_WAIT_SAFE_MODE_3_MS ;
 int IMG_ACT_FACTORY ;
 int MAP_GPIOPinWrite (int ,int ,int ) ;
 int MICROPY_SYS_LED_PORT ;
 int MICROPY_SYS_LED_PORT_PIN ;
 int PRCMSetSpecialBit (int ) ;
 int PRCM_SAFE_BOOT_BIT ;
 int mperror_deinit_sfe_pin () ;
 scalar_t__ safe_boot_request_start (int ) ;
 scalar_t__ wait_while_blinking (int ,int ,int) ;

__attribute__((used)) static void wait_for_safe_boot (sBootInfo_t *psBootInfo) {
    if (safe_boot_request_start(BOOTMGR_WAIT_SAFE_MODE_0_MS)) {
        if (wait_while_blinking(BOOTMGR_WAIT_SAFE_MODE_1_MS, BOOTMGR_WAIT_SAFE_MODE_1_BLINK_MS, 0)) {

            psBootInfo->ActiveImg = psBootInfo->PrevImg;
            if (wait_while_blinking(BOOTMGR_WAIT_SAFE_MODE_2_MS, BOOTMGR_WAIT_SAFE_MODE_2_BLINK_MS, 0)) {

                psBootInfo->ActiveImg = IMG_ACT_FACTORY;
                wait_while_blinking(BOOTMGR_WAIT_SAFE_MODE_3_MS, BOOTMGR_WAIT_SAFE_MODE_3_BLINK_MS, 1);
            }
        }

        MAP_GPIOPinWrite(MICROPY_SYS_LED_PORT, MICROPY_SYS_LED_PORT_PIN, 0);

        PRCMSetSpecialBit(PRCM_SAFE_BOOT_BIT);
    }

    mperror_deinit_sfe_pin();
}
