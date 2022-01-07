
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
 int oled_write_char (char,int) ;

void oled_advance_page(bool clearPageRemainder) {
    uint16_t index = oled_cursor - &oled_buffer[0];
    uint8_t remaining = oled_rotation_width - (index % oled_rotation_width);

    if (clearPageRemainder) {

        remaining = remaining / OLED_FONT_WIDTH;


        while (remaining--) oled_write_char(' ', 0);
    } else {

        if (index + remaining >= OLED_MATRIX_SIZE) {
            index = 0;
            remaining = 0;
        }

        oled_cursor = &oled_buffer[index + remaining];
    }
}
