
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_2__ {scalar_t__ input_mode; int raw; } ;


 int EECONFIG_UNICODEMODE ;
 int dprintf (char*,scalar_t__) ;
 int eeprom_read_byte (int ) ;
 scalar_t__* selected ;
 size_t selected_count ;
 size_t selected_index ;
 TYPE_1__ unicode_config ;

void unicode_input_mode_init(void) {
    unicode_config.raw = eeprom_read_byte(EECONFIG_UNICODEMODE);
    unicode_config.input_mode = selected[selected_index = 0];


    dprintf("Unicode input mode init to: %u\n", unicode_config.input_mode);
}
