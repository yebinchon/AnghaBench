
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enable; int mode; } ;


 int dprintf (char*,int) ;
 TYPE_1__ rgblight_config ;
 int rgblight_mode (int ) ;

void rgblight_enable(void) {
    rgblight_config.enable = 1;


    dprintf("rgblight enable [EEPROM]: rgblight_config.enable = %u\n", rgblight_config.enable);
    rgblight_mode(rgblight_config.mode);
}
