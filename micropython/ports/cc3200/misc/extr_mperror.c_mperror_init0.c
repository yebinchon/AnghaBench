
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pin_obj_t ;
struct TYPE_2__ {int enabled; } ;


 int GPIO_DIR_MODE_IN ;
 int GPIO_DIR_MODE_OUT ;
 int MAP_GPIODirModeSet (int ,int ,int ) ;
 int MAP_PRCMPeripheralClkEnable (int ,int) ;
 int MAP_PinConfigSet (int ,int ,int ) ;
 int MAP_PinTypeGPIO (int ,int ,int) ;
 int MICROPY_SAFE_BOOT_PIN_NUM ;
 int MICROPY_SAFE_BOOT_PORT ;
 int MICROPY_SAFE_BOOT_PORT_PIN ;
 int MICROPY_SAFE_BOOT_PRCM ;
 int MICROPY_SYS_LED_GPIO ;
 int MICROPY_SYS_LED_PIN_NUM ;
 int MICROPY_SYS_LED_PORT ;
 int MICROPY_SYS_LED_PORT_PIN ;
 int MICROPY_SYS_LED_PRCM ;
 int PIN_MODE_0 ;
 int PIN_STRENGTH_4MA ;
 int PIN_STRENGTH_6MA ;
 int PIN_TYPE_STD ;
 int PIN_TYPE_STD_PD ;
 int PRCM_RUN_MODE_CLK ;
 int PRCM_SLP_MODE_CLK ;
 TYPE_1__ mperror_heart_beat ;
 int mperror_heartbeat_switch_off () ;
 int pin_config (int *,int ,int ,int ,int ,int ) ;

void mperror_init0 (void) {
    pin_config ((pin_obj_t *)&MICROPY_SYS_LED_GPIO, PIN_MODE_0, GPIO_DIR_MODE_OUT, PIN_TYPE_STD, 0, PIN_STRENGTH_6MA);

    mperror_heart_beat.enabled = 1;
    mperror_heartbeat_switch_off();
}
