
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int keys; } ;


 size_t CB_SUPERDUPER ;
 int EECONFIG_SUPERDUPER_INDEX ;



 int eeprom_read_byte (int ) ;
 TYPE_1__* key_combos ;
 int * superduper_combos ;

void set_superduper_key_combos(void) {
    uint8_t layer = eeprom_read_byte(EECONFIG_SUPERDUPER_INDEX);

    switch (layer) {
        case 129:
        case 130:
        case 128:
            key_combos[CB_SUPERDUPER].keys = superduper_combos[layer];
            break;
    }
}
