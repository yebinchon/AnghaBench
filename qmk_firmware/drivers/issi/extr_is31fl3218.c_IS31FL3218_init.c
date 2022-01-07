
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int IS31FL3218_write_register (scalar_t__,int) ;
 scalar_t__ ISSI_REG_CONTROL ;
 scalar_t__ ISSI_REG_PWM ;
 scalar_t__ ISSI_REG_RESET ;
 scalar_t__ ISSI_REG_SHUTDOWN ;
 scalar_t__ ISSI_REG_UPDATE ;

void IS31FL3218_init(void) {

    IS31FL3218_write_register(ISSI_REG_RESET, 0x00);


    IS31FL3218_write_register(ISSI_REG_SHUTDOWN, 0x01);


    for (uint8_t i = 0; i < 18; i++) {
        IS31FL3218_write_register(ISSI_REG_PWM + i, 0x00);
    }


    for (uint8_t i = 0; i < 3; i++) {
        IS31FL3218_write_register(ISSI_REG_CONTROL + i, 0b00111111);
    }


    IS31FL3218_write_register(ISSI_REG_UPDATE, 0x01);
}
