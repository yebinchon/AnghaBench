
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint16_t ;


 scalar_t__ FONTHEADERSIZE ;
 scalar_t__ TOTALFONTS ;
 int draw_pixel (scalar_t__,scalar_t__,int,scalar_t__) ;
 scalar_t__* fonts_pointer ;
 int pgm_read_byte (scalar_t__) ;

void draw_char(uint8_t x, uint8_t y, uint8_t c, uint8_t color, uint8_t mode, uint8_t font) {


    uint8_t rowsToDraw, row, tempC;
    uint8_t i, j, temp;
    uint16_t charPerBitmapRow, charColPositionOnBitmap, charRowPositionOnBitmap, charBitmapStartPosition;

    if ((font >= TOTALFONTS) || (font < 0)) return;

    uint8_t fontType = font;
    uint8_t fontWidth = pgm_read_byte(fonts_pointer[fontType] + 0);
    uint8_t fontHeight = pgm_read_byte(fonts_pointer[fontType] + 1);
    uint8_t fontStartChar = pgm_read_byte(fonts_pointer[fontType] + 2);
    uint8_t fontTotalChar = pgm_read_byte(fonts_pointer[fontType] + 3);
    uint16_t fontMapWidth = (pgm_read_byte(fonts_pointer[fontType] + 4) * 100) + pgm_read_byte(fonts_pointer[fontType] + 5);

    if ((c < fontStartChar) || (c > (fontStartChar + fontTotalChar - 1)))
        return;

    tempC = c - fontStartChar;


    rowsToDraw = fontHeight / 8;
    if (rowsToDraw <= 1) rowsToDraw = 1;


    if (rowsToDraw == 1) {
        for (i = 0; i < fontWidth + 1; i++) {
            if (i == fontWidth)
                temp = 0;
            else
                temp = pgm_read_byte(fonts_pointer[fontType] + FONTHEADERSIZE + (tempC * fontWidth) + i);

            for (j = 0; j < 8; j++) {
                if (temp & 0x1) {
                    draw_pixel(x + i, y + j, color, mode);
                } else {
                    draw_pixel(x + i, y + j, !color, mode);
                }

                temp >>= 1;
            }
        }
        return;
    }



    charPerBitmapRow = fontMapWidth / fontWidth;
    charColPositionOnBitmap = tempC % charPerBitmapRow;
    charRowPositionOnBitmap = (int)(tempC / charPerBitmapRow);
    charBitmapStartPosition = (charRowPositionOnBitmap * fontMapWidth * (fontHeight / 8)) + (charColPositionOnBitmap * fontWidth);


    for (row = 0; row < rowsToDraw; row++) {
        for (i = 0; i < fontWidth; i++) {
            temp = pgm_read_byte(fonts_pointer[fontType] + FONTHEADERSIZE + (charBitmapStartPosition + i + (row * fontMapWidth)));
            for (j = 0; j < 8; j++) {
                if (temp & 0x1) {
                    draw_pixel(x + i, y + j + (row * 8), color, mode);
                } else {
                    draw_pixel(x + i, y + j + (row * 8), !color, mode);
                }
                temp >>= 1;
            }
        }
    }
}
