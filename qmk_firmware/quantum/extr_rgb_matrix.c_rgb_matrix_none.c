
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {int init; } ;
typedef TYPE_1__ effect_params_t ;


 scalar_t__ DRIVER_LED_TOTAL ;
 int RGB_MATRIX_USE_LIMITS (scalar_t__,scalar_t__) ;
 scalar_t__ led_max ;
 scalar_t__ led_min ;
 int rgb_matrix_set_color (scalar_t__,int ,int ,int ) ;

__attribute__((used)) static bool rgb_matrix_none(effect_params_t *params) {
    if (!params->init) {
        return 0;
    }

    RGB_MATRIX_USE_LIMITS(led_min, led_max);
    for (uint8_t i = led_min; i < led_max; i++) {
        rgb_matrix_set_color(i, 0, 0, 0);
    }
    return led_max < DRIVER_LED_TOTAL;
}
