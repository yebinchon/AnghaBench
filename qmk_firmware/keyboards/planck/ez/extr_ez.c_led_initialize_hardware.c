
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ led_level; } ;


 int GPIOB ;
 int PAL_MODE_ALTERNATE (int) ;
 int PWMD4 ;
 TYPE_1__ keyboard_config ;
 int palSetPadMode (int ,int,int ) ;
 int planck_ez_left_led_level (int) ;
 int planck_ez_left_led_off () ;
 int planck_ez_right_led_level (int) ;
 int planck_ez_right_led_off () ;
 int pwmCFG ;
 int pwmStart (int *,int *) ;

void led_initialize_hardware(void) {
    pwmStart(&PWMD4, &pwmCFG);


    planck_ez_right_led_level((uint8_t)keyboard_config.led_level * 255 / 4 );
    palSetPadMode(GPIOB, 8, PAL_MODE_ALTERNATE(2));
    planck_ez_left_led_level((uint8_t)keyboard_config.led_level * 255 / 4 );
    palSetPadMode(GPIOB, 9, PAL_MODE_ALTERNATE(2));



    planck_ez_left_led_off();
    planck_ez_right_led_off();
}
