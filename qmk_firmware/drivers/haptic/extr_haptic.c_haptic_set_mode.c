
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int mode; int raw; } ;


 int eeconfig_update_haptic (int ) ;
 TYPE_1__ haptic_config ;
 int xprintf (char*,int ) ;

void haptic_set_mode(uint8_t mode) {
    haptic_config.mode = mode;
    eeconfig_update_haptic(haptic_config.raw);
    xprintf("haptic_config.mode = %u\n", haptic_config.mode);
}
