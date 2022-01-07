
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int8_t ;


 int NORM ;
 int PIXEL_ON ;
 int XOR ;
 int draw_char (scalar_t__,scalar_t__,scalar_t__,int ,int ,int ) ;
 int draw_rect_filled_soft (scalar_t__,scalar_t__,int,int,int ,int ) ;
 int draw_string (scalar_t__,scalar_t__,char*,int ,int ,int ) ;
 scalar_t__ layer ;

void draw_layer_section(int8_t startX, int8_t startY, bool show_legend){
  if(show_legend){
    draw_string(startX + 1, startY + 2, "LAYER", PIXEL_ON, NORM, 0);
  } else {
    startX -= 32;
  }
  draw_rect_filled_soft(startX + 32, startY + 1, 9, 9, PIXEL_ON, NORM);
  draw_char(startX + 34, startY + 2, layer + 0x30, PIXEL_ON, XOR, 0);
}
