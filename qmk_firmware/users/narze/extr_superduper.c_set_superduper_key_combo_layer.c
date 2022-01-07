
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_2__ {int keys; } ;


 size_t CB_SUPERDUPER ;
 int EECONFIG_SUPERDUPER_INDEX ;
 int eeprom_update_byte (int ,size_t) ;
 TYPE_1__* key_combos ;
 int * superduper_combos ;

void set_superduper_key_combo_layer(uint16_t layer) {
    key_combos[CB_SUPERDUPER].keys = superduper_combos[layer];
    eeprom_update_byte(EECONFIG_SUPERDUPER_INDEX, layer);
}
