
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ enable; int raw; } ;


 int _delay_ms (int) ;
 int eeconfig_update_rgblight (int ) ;
 TYPE_1__ rgblight_config ;
 int rgblight_set () ;
 int xprintf (char*,scalar_t__) ;

void rgblight_disable(void) {
  rgblight_config.enable = 0;
  eeconfig_update_rgblight(rgblight_config.raw);
  xprintf("rgblight disable [EEPROM]: rgblight_config.enable = %u\n", rgblight_config.enable);



  _delay_ms(50);
  rgblight_set();
}
