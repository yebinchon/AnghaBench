
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int EECONFIG_LED_DIM_LVL ;


 int eeprom_write_byte (int ,int) ;
 int led_dim ;

bool led_brightness(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
  case 128:
    if (record->event.pressed && led_dim > 0) {
      led_dim--;
      eeprom_write_byte(EECONFIG_LED_DIM_LVL, led_dim);
    }

    return 1;
    break;
  case 129:
    if (record->event.pressed && led_dim < 8) {
      led_dim++;
      eeprom_write_byte(EECONFIG_LED_DIM_LVL, led_dim);
    }

    return 1;
    break;
  default:
    return 0;
    break;
  }
}
