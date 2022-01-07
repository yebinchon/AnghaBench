
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int dwell; int raw; } ;


 int eeconfig_update_haptic (int ) ;
 TYPE_1__ haptic_config ;
 int xprintf (char*,int ) ;

void haptic_set_dwell(uint8_t dwell) {
    haptic_config.dwell = dwell;
    eeconfig_update_haptic(haptic_config.raw);
    xprintf("haptic_config.dwell = %u\n", haptic_config.dwell);
}
