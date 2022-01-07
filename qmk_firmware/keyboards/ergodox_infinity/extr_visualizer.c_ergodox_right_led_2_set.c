
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int led2; } ;


 TYPE_1__ user_data_keyboard ;
 int visualizer_set_user_data (TYPE_1__*) ;

void ergodox_right_led_2_set(uint8_t n) {
    user_data_keyboard.led2 = n;
    visualizer_set_user_data(&user_data_keyboard);
}
