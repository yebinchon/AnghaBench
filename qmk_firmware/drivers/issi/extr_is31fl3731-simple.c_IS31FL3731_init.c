
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int IS31FL3731_write_register (int ,int,int) ;
 int ISSI_BANK_FUNCTIONREG ;
 int ISSI_COMMANDREGISTER ;
 int ISSI_REG_AUDIOSYNC ;
 int ISSI_REG_CONFIG ;
 int ISSI_REG_CONFIG_PICTUREMODE ;
 int ISSI_REG_PICTUREFRAME ;
 int ISSI_REG_SHUTDOWN ;
 int wait_ms (int) ;

void IS31FL3731_init(uint8_t addr) {






    IS31FL3731_write_register(addr, ISSI_COMMANDREGISTER, ISSI_BANK_FUNCTIONREG);


    IS31FL3731_write_register(addr, ISSI_REG_SHUTDOWN, 0x00);

    wait_ms(10);


    IS31FL3731_write_register(addr, ISSI_REG_CONFIG, ISSI_REG_CONFIG_PICTUREMODE);

    IS31FL3731_write_register(addr, ISSI_REG_PICTUREFRAME, 0x00);

    IS31FL3731_write_register(addr, ISSI_REG_AUDIOSYNC, 0x00);


    IS31FL3731_write_register(addr, ISSI_COMMANDREGISTER, 0);


    for (int i = 0x00; i <= 0x11; i++) {
        IS31FL3731_write_register(addr, i, 0x00);
    }


    for (int i = 0x12; i <= 0x23; i++) {
        IS31FL3731_write_register(addr, i, 0x00);
    }


    for (int i = 0x24; i <= 0xB3; i++) {
        IS31FL3731_write_register(addr, i, 0x00);
    }


    IS31FL3731_write_register(addr, ISSI_COMMANDREGISTER, ISSI_BANK_FUNCTIONREG);


    IS31FL3731_write_register(addr, ISSI_REG_SHUTDOWN, 0x01);




    IS31FL3731_write_register(addr, ISSI_COMMANDREGISTER, 0);
}
