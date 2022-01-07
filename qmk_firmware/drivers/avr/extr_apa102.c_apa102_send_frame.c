
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int apa102_send_byte (int) ;

void apa102_send_frame(uint32_t frame) {
    for (uint32_t i = 0xFF; i > 0;) {
        apa102_send_byte(frame & i);
        i = i << 8;
    }
}
