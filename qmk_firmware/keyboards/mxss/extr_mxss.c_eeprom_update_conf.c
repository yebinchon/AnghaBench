
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int val; int raw; int mode; } ;
typedef TYPE_1__ fled_config ;


 int EEPROM_FRONTLED_ADDR ;
 int FLED_VAL_STEP ;
 int eeprom_set_valid (int) ;
 int eeprom_update_byte (int ,int ) ;
 int fled_mode ;
 int fled_val ;

void eeprom_update_conf(void)
{

    fled_config conf;
    conf.mode = fled_mode;


    if (fled_val == 255)
        conf.val = 256 / FLED_VAL_STEP;
    else
        conf.val = fled_val / FLED_VAL_STEP;


    eeprom_set_valid(1);
 eeprom_update_byte(EEPROM_FRONTLED_ADDR, conf.raw);
}
