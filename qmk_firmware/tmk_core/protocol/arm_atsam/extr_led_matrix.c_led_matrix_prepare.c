
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_3__ {scalar_t__* b; scalar_t__* g; scalar_t__* r; } ;
struct TYPE_4__ {TYPE_1__ rgb; } ;


 size_t ISSI3733_LED_COUNT ;
 TYPE_2__* led_map ;

void led_matrix_prepare(void) {
    for (uint8_t i = 0; i < ISSI3733_LED_COUNT; i++) {
        *led_map[i].rgb.r = 0;
        *led_map[i].rgb.g = 0;
        *led_map[i].rgb.b = 0;
    }
}
