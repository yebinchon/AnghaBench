
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int visualizer_user_data_t ;
typedef int uint8_t ;


 scalar_t__ is_led_on (int *,int) ;

__attribute__((used)) static uint8_t get_secondary_led_index(visualizer_user_data_t* user_data) {
    if (is_led_on(user_data, 0) &&
            is_led_on(user_data, 1) &&
            is_led_on(user_data, 2)) {
        return 3;
    }
    return 0;
}
