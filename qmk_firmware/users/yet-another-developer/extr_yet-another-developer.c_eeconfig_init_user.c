
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rgb_layer_change; scalar_t__ raw; } ;


 int EECONFIG_UNICODEMODE ;
 int YAD_UNICODE_MODE ;
 int eeconfig_update_user (scalar_t__) ;
 int eeprom_update_byte (int ,int ) ;
 int get_unicode_input_mode () ;
 int set_unicode_input_mode (int ) ;
 TYPE_1__ userspace_config ;

void eeconfig_init_user(void) {
  userspace_config.raw = 0;
  userspace_config.rgb_layer_change = 1;
  eeconfig_update_user(userspace_config.raw);




    eeprom_update_byte(EECONFIG_UNICODEMODE, YAD_UNICODE_MODE);

}
