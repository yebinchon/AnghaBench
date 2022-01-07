
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int mode; } ;


 scalar_t__ drv_effect_max ;
 TYPE_1__ haptic_config ;
 int haptic_set_mode (int) ;

void haptic_mode_increase(void) {
    uint8_t mode = haptic_config.mode + 1;





    haptic_set_mode(mode);
}
