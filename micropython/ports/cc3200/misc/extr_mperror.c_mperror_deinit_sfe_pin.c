
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAP_PinConfigSet (int ,int ,int ) ;
 int MICROPY_SAFE_BOOT_PIN_NUM ;
 int PIN_STRENGTH_4MA ;
 int PIN_TYPE_STD ;

void mperror_deinit_sfe_pin (void) {

    MAP_PinConfigSet(MICROPY_SAFE_BOOT_PIN_NUM, PIN_STRENGTH_4MA, PIN_TYPE_STD);
}
