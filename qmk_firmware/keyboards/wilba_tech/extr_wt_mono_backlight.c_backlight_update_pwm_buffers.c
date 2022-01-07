
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IS31FL3736_update_pwm_buffers (int ,int) ;
 int ISSI_ADDR_DEFAULT ;

void backlight_update_pwm_buffers(void)
{
 IS31FL3736_update_pwm_buffers(ISSI_ADDR_DEFAULT,0x00);
}
