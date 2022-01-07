
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint16_t ;


 int OLED_FONT_WIDTH ;
 size_t OLED_MATRIX_SIZE ;
 int * oled_buffer ;
 int * oled_cursor ;
 size_t oled_rotation_width ;

void oled_advance_char(void) {
    uint16_t nextIndex = oled_cursor - &oled_buffer[0] + OLED_FONT_WIDTH;
    uint8_t remainingSpace = oled_rotation_width - (nextIndex % oled_rotation_width);


    if (remainingSpace < OLED_FONT_WIDTH) {
        nextIndex += remainingSpace;
    }


    if (nextIndex >= OLED_MATRIX_SIZE) {
        nextIndex = 0;
    }


    oled_cursor = &oled_buffer[nextIndex];
}
