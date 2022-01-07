
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FLED_VAL_STEP ;
 int eeprom_update_conf () ;
 int fled_val ;
 int rgblight_set () ;

void fled_val_decrease(void)
{

    if (fled_val - FLED_VAL_STEP > 255)
        fled_val = 255;
    else
        fled_val -= FLED_VAL_STEP;


    eeprom_update_conf();
    rgblight_set();
}
