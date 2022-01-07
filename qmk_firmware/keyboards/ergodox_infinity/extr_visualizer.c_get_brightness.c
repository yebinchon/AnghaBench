
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int led1; int led2; int led3; } ;
typedef TYPE_1__ visualizer_user_data_t ;
typedef int uint8_t ;



__attribute__((used)) static uint8_t get_brightness(visualizer_user_data_t* user_data, uint8_t index) {
    switch (index) {
    case 1:
        return user_data->led1;
    case 2:
        return user_data->led2;
    case 3:
        return user_data->led3;
    }
    return 0;
}
