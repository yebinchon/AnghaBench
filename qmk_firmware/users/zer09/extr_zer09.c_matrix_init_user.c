
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eeprom_read_led_dim_lvl () ;
 int matrix_init_keymap () ;

void matrix_init_user(void) {
  eeprom_read_led_dim_lvl();

  matrix_init_keymap();
}
