
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_HOST_LED_ON (int ) ;
 int USB_LED_CAPS_LOCK ;
 int rgb_matrix_set_color (int,int,int,int) ;

__attribute__ ((weak))
void rgb_matrix_indicators_user(void)
{
    if (IS_HOST_LED_ON(USB_LED_CAPS_LOCK))
    {
        rgb_matrix_set_color(41, 0xFF, 0xFF, 0xFF);
    }
}
