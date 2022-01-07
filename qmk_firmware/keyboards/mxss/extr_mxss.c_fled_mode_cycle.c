
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eeprom_update_conf () ;
 int fled_mode ;
 int rgblight_set () ;

void fled_mode_cycle(void)
{

    switch (fled_mode) {
        case 129:
        fled_mode = 128;
        break;

        case 128:
        fled_mode = 130;
        break;

        case 130:
        fled_mode = 129;
        break;
    }


    eeprom_update_conf();
    rgblight_set();
}
