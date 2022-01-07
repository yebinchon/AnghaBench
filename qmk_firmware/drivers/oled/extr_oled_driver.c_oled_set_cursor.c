
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef size_t uint16_t ;


 size_t OLED_FONT_WIDTH ;
 size_t OLED_MATRIX_SIZE ;
 int * oled_buffer ;
 int * oled_cursor ;
 size_t oled_rotation_width ;

void oled_set_cursor(uint8_t col, uint8_t line) {
    uint16_t index = line * oled_rotation_width + col * OLED_FONT_WIDTH;


    if (index >= OLED_MATRIX_SIZE) {
        index = 0;
    }

    oled_cursor = &oled_buffer[index];
}
