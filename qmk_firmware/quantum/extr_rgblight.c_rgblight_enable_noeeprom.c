
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enable; int mode; } ;


 int dprintf (char*,int) ;
 TYPE_1__ rgblight_config ;
 int rgblight_mode_noeeprom (int ) ;

void rgblight_enable_noeeprom(void) {
    rgblight_config.enable = 1;
    dprintf("rgblight enable [NOEEPROM]: rgblight_config.enable = %u\n", rgblight_config.enable);
    rgblight_mode_noeeprom(rgblight_config.mode);
}
