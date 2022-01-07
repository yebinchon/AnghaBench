
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int apa102_send_byte (int) ;

void apa102_end_frame(uint16_t leds) {
    apa102_send_byte(0xFF);
    for (uint16_t i = 0; i < 5 + leds / 16; i++) {
        apa102_send_byte(0);
    }
}
