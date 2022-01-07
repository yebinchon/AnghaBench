
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EECONFIG_USERSPACE ;
 int current_os ;
 int eeprom_read_byte (int ) ;
 int set_os (int ,int) ;

void matrix_init_user(void) {
  current_os = eeprom_read_byte(EECONFIG_USERSPACE);
  set_os(current_os, 0);
}
