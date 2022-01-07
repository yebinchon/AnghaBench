
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EECONFIG_LED_DIM_LVL ;
 int eeprom_read_byte (int ) ;
 int eeprom_write_byte (int ,int) ;
 int led_dim ;

void eeprom_read_led_dim_lvl(void) {
  led_dim = eeprom_read_byte(EECONFIG_LED_DIM_LVL);

  if (led_dim > 8 || led_dim < 0) {
    led_dim = 0;
    eeprom_write_byte(EECONFIG_LED_DIM_LVL, led_dim);
  }
}
