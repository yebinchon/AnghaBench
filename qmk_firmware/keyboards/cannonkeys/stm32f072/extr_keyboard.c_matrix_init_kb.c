
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAL_MODE_ALTERNATE (int ) ;
 int PIN_WS2812 ;
 int PORT_WS2812 ;
 int backlight_init_ports () ;
 int eeprom_init_kb () ;
 int leds_init () ;
 int matrix_init_board () ;
 int palSetPadMode (int ,int ,int ) ;
 int wait_ms (int) ;

void matrix_init_kb(void){
   eeprom_init_kb();






    backlight_init_ports();

    matrix_init_board();
}
