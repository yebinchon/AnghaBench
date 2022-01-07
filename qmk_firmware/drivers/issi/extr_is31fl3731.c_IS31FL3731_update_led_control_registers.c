
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int IS31FL3731_write_register (size_t,int,int ) ;
 int ** g_led_control_registers ;
 scalar_t__* g_led_control_registers_update_required ;

void IS31FL3731_update_led_control_registers(uint8_t addr, uint8_t index) {
    if (g_led_control_registers_update_required[index]) {
        for (int i = 0; i < 18; i++) {
            IS31FL3731_write_register(addr, i, g_led_control_registers[index][i]);
        }
    }
}
