
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int oled_set_cursor (int,int) ;
 int render_icon () ;
 int render_keyboard_leds () ;
 int render_layer () ;
 int render_rgb_state () ;

__attribute__((used)) static void render_status(void)
{
    render_icon();


    oled_set_cursor(6, 0);
    render_layer();


    oled_set_cursor(6, 1);
    render_keyboard_leds();





}
