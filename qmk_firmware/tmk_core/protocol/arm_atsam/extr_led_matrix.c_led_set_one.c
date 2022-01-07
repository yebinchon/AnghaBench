
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint8_t ;
struct TYPE_2__ {void* b; void* g; void* r; } ;


 int ISSI3733_LED_COUNT ;
 TYPE_1__* led_buffer ;
 int led_matrix_massdrop_config_override (int) ;

void led_set_one(int i, uint8_t r, uint8_t g, uint8_t b) {
    if (i < ISSI3733_LED_COUNT) {



        led_buffer[i].r = r;
        led_buffer[i].g = g;
        led_buffer[i].b = b;

    }
}
