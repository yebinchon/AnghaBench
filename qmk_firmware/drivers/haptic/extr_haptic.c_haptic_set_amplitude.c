
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int amplitude; int raw; } ;


 int DRV_amplitude (int ) ;
 int eeconfig_update_haptic (int ) ;
 TYPE_1__ haptic_config ;
 int xprintf (char*,int ) ;

void haptic_set_amplitude(uint8_t amp) {
    haptic_config.amplitude = amp;
    eeconfig_update_haptic(haptic_config.raw);
    xprintf("haptic_config.amplitude = %u\n", haptic_config.amplitude);



}
