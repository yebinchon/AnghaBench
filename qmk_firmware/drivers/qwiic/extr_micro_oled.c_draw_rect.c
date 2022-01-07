
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int draw_line_hori (int,int,int,int,int) ;
 int draw_line_vert (int,int,int,int,int) ;

void draw_rect(uint8_t x, uint8_t y, uint8_t width, uint8_t height, uint8_t color, uint8_t mode) {
    uint8_t tempHeight;

    draw_line_hori(x, y, width, color, mode);
    draw_line_hori(x, y + height - 1, width, color, mode);

    tempHeight = height - 2;



    if (tempHeight < 1) return;

    draw_line_vert(x, y + 1, tempHeight, color, mode);
    draw_line_vert(x + width - 1, y + 1, tempHeight, color, mode);
}
