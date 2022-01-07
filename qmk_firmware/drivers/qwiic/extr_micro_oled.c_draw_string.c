
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ TOTALFONTS ;
 int draw_char (scalar_t__,scalar_t__,char,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__* fonts_pointer ;
 scalar_t__ pgm_read_byte (scalar_t__) ;
 int strlen (char*) ;

void draw_string(uint8_t x, uint8_t y, char* string, uint8_t color, uint8_t mode, uint8_t font) {
    if ((font >= TOTALFONTS) || (font < 0)) return;

    uint8_t fontType = font;
    uint8_t fontWidth = pgm_read_byte(fonts_pointer[fontType] + 0);

    uint8_t cur_x = x;
    for (int i = 0; i < strlen(string); i++) {
        draw_char(cur_x, y, string[i], color, mode, font);
        cur_x += fontWidth + 1;
    }
}
