
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int b; int g; int r; } ;
typedef TYPE_1__ uint8_t ;
typedef int uint16_t ;


 int apa102_end_frame (int ) ;
 int apa102_send_frame (int) ;
 int apa102_start_frame () ;

void apa102_send_array(uint8_t *data, uint16_t leds) {
    apa102_start_frame();
    while (leds--) {
        apa102_send_frame(0xFF000000 | (data->b << 16) | (data->g << 8) | data->r);
        data++;
    }
    apa102_end_frame(leds);
}
