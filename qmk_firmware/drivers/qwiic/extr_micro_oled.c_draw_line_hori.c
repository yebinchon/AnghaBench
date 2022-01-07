
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int draw_line (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

void draw_line_hori(uint8_t x, uint8_t y, uint8_t width, uint8_t color, uint8_t mode) { draw_line(x, y, x + width, y, color, mode); }
