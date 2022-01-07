
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int IS31FL3218_update_pwm_buffers () ;
 int IS31FL3731_update_led_control_registers (int ,int) ;
 int IS31FL3731_update_pwm_buffers (int ,int) ;
 int IS31FL3733_update_led_control_registers (int ,int) ;
 int IS31FL3733_update_pwm_buffers (int ,int) ;
 int ISSI_ADDR_1 ;
 int ISSI_ADDR_2 ;
 int ISSI_ADDR_3 ;

void backlight_update_pwm_buffers(void)
{
    IS31FL3731_update_pwm_buffers( ISSI_ADDR_1, 0 );
    IS31FL3731_update_pwm_buffers( ISSI_ADDR_2, 1 );
    IS31FL3731_update_led_control_registers( ISSI_ADDR_1, 0 );
    IS31FL3731_update_led_control_registers( ISSI_ADDR_2, 1 );

}
