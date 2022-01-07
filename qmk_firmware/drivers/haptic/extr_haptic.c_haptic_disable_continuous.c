
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int raw; scalar_t__ cont; } ;


 int DRV_MODE ;
 int DRV_write (int ,int) ;
 int eeconfig_update_haptic (int ) ;
 TYPE_1__ haptic_config ;
 int xprintf (char*,scalar_t__) ;

void haptic_disable_continuous(void) {
    haptic_config.cont = 0;
    xprintf("haptic_config.cont = %u\n", haptic_config.cont);
    eeconfig_update_haptic(haptic_config.raw);



}
