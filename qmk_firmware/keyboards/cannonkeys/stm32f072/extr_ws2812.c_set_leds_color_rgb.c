
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LED_TYPE ;


 int NB_LEDS ;
 int set_led_color_rgb (int ,int) ;

void set_leds_color_rgb(LED_TYPE color){
 for(int i = 0; i < NB_LEDS; i++)
   set_led_color_rgb(color, i);
}
