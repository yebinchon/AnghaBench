
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int visualizer_user_data_t ;
typedef int uint8_t ;


 scalar_t__ is_led_on (int *,int) ;

__attribute__((used)) static uint8_t get_led_index_master(visualizer_user_data_t* user_data) {
    for (int i=0; i < 3; i++) {
        if (is_led_on(user_data, i)) {
            return i + 1;
        }
    }
    return 0;
}
