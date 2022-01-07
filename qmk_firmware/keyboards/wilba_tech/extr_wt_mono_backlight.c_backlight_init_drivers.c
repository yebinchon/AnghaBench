
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int IS31FL3736_init (int ) ;
 int IS31FL3736_mono_set_led_control_register (int,int) ;
 int IS31FL3736_update_led_control_registers (int ,int) ;
 int ISSI_ADDR_DEFAULT ;
 int i2c_init () ;

void backlight_init_drivers(void)
{

 i2c_init();
 IS31FL3736_init( ISSI_ADDR_DEFAULT );

 for ( uint8_t index = 0; index < 96; index++ ) {
  IS31FL3736_mono_set_led_control_register( index, 1 );
 }
 IS31FL3736_update_led_control_registers( ISSI_ADDR_DEFAULT, 0x00 );
}
