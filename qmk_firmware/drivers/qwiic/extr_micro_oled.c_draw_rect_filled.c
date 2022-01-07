
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int draw_line_vert (int,int,int,int,int) ;

void draw_rect_filled(uint8_t x, uint8_t y, uint8_t width, uint8_t height, uint8_t color, uint8_t mode) {

    for (int i = x; i < x + width; i++) {
        draw_line_vert(i, y, height, color, mode);
    }
}
