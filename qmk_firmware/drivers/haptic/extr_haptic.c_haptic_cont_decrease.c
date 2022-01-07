
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int amplitude; } ;


 TYPE_1__ haptic_config ;
 int haptic_set_amplitude (int) ;

void haptic_cont_decrease(void) {
    uint8_t amp = haptic_config.amplitude - 10;
    if (haptic_config.amplitude < 20) {
        amp = 20;
    }
    haptic_set_amplitude(amp);
}
