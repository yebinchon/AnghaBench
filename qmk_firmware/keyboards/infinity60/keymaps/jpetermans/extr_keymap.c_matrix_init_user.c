
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _FNAV ;
 int _MEDIA ;
 int _NUMPAD ;
 int chThdSleepMilliseconds (int) ;
 int led_controller_init () ;
 int led_game ;
 int led_media ;
 int led_nav ;
 int led_numpad ;
 int write_led_page (int,int ,int) ;

void matrix_init_user(void) {

    led_controller_init();


    write_led_page(_NUMPAD, led_numpad, 16);
    chThdSleepMilliseconds(10);

    write_led_page(_FNAV, led_nav, 12);
    chThdSleepMilliseconds(10);

    write_led_page(_MEDIA, led_media, 15);
    chThdSleepMilliseconds(10);

    write_led_page(4, led_game, 5);
    chThdSleepMilliseconds(1000);
}
