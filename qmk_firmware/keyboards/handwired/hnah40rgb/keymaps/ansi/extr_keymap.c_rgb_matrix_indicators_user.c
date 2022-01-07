
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_HOST_LED_ON (int ) ;
 scalar_t__ IS_LAYER_ON (int ) ;
 int USB_LED_CAPS_LOCK ;
 int _L1 ;
 int _L2 ;
 int rgb_matrix_set_color (int,int,int,int) ;

void rgb_matrix_indicators_user(void)
{
        if (IS_HOST_LED_ON(USB_LED_CAPS_LOCK))
        {
            rgb_matrix_set_color(22, 255, 255, 255);
        }
        if (IS_LAYER_ON(_L1))
        {
            rgb_matrix_set_color(46, 255, 255, 255);
        }
        if (IS_LAYER_ON(_L2))
        {
            rgb_matrix_set_color(45, 255, 255, 255);
        }
}
