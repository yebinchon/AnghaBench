
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int IS31FL3737_write_register (int ,int,int) ;
 int ISSI_COMMANDREGISTER ;
 int ISSI_COMMANDREGISTER_WRITELOCK ;
 int ISSI_PAGE_LEDCONTROL ;
 int** g_led_control_registers ;
 scalar_t__ g_led_control_registers_update_required ;

void IS31FL3737_update_led_control_registers(uint8_t addr1, uint8_t addr2) {
    if (g_led_control_registers_update_required) {

        IS31FL3737_write_register(addr1, ISSI_COMMANDREGISTER_WRITELOCK, 0xC5);
        IS31FL3737_write_register(addr1, ISSI_COMMANDREGISTER, ISSI_PAGE_LEDCONTROL);
        for (int i = 0; i < 24; i++) {
            IS31FL3737_write_register(addr1, i, g_led_control_registers[0][i]);

        }
    }
}
