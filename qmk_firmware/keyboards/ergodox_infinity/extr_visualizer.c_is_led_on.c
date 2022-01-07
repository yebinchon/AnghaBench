
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int led_on; } ;
typedef TYPE_1__ visualizer_user_data_t ;
typedef unsigned int uint8_t ;



__attribute__((used)) static inline bool is_led_on(visualizer_user_data_t* user_data, uint8_t num) {
    return user_data->led_on & (1u << num);
}
