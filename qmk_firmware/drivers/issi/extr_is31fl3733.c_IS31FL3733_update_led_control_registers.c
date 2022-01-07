
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int IS31FL3733_write_register (size_t,int,int) ;
 int ISSI_COMMANDREGISTER ;
 int ISSI_COMMANDREGISTER_WRITELOCK ;
 int ISSI_PAGE_LEDCONTROL ;
 int** g_led_control_registers ;
 scalar_t__* g_led_control_registers_update_required ;

void IS31FL3733_update_led_control_registers(uint8_t addr, uint8_t index) {
    if (g_led_control_registers_update_required[index]) {

        IS31FL3733_write_register(addr, ISSI_COMMANDREGISTER_WRITELOCK, 0xC5);
        IS31FL3733_write_register(addr, ISSI_COMMANDREGISTER, ISSI_PAGE_LEDCONTROL);
        for (int i = 0; i < 24; i++) {
            IS31FL3733_write_register(addr, i, g_led_control_registers[index][i]);
        }
    }


}
