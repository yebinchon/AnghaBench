
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int led_on; } ;


 TYPE_1__ user_data_keyboard ;
 int visualizer_set_user_data (TYPE_1__*) ;

void ergodox_right_led_3_off(void){
    user_data_keyboard.led_on &= ~(1u << 2);
    visualizer_set_user_data(&user_data_keyboard);
}
