
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int visualizer_user_data_t ;
typedef int uint8_t ;


 int get_led_index_master (int *) ;
 scalar_t__ is_led_on (int *,int) ;

__attribute__((used)) static uint8_t get_led_index_slave(visualizer_user_data_t* user_data) {
    uint8_t master_index = get_led_index_master(user_data);
    if (master_index!=0) {
        for (int i=master_index; i < 3; i++) {
            if (is_led_on(user_data, i)) {
                return i + 1;
            }
        }
    }

    return 0;
}
