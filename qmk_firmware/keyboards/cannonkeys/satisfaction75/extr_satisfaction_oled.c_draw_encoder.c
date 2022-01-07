
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int8_t ;
 int NORM ;
 int PIXEL_ON ;
 int XOR ;
 int draw_rect_filled_soft (scalar_t__,scalar_t__,int,int,int ,int ) ;
 int draw_string (scalar_t__,scalar_t__,char*,int ,int ,int ) ;
 int encoder_mode ;

void draw_encoder(int8_t startX, int8_t startY, bool show_legend){
  if(show_legend){
    draw_string(startX + 1, startY + 2, "ENC", PIXEL_ON, NORM, 0);
  } else {
    startX -= 22;
  }
  draw_rect_filled_soft(startX + 22, startY + 1, 3 + (3 * 6), 9, PIXEL_ON, NORM);
  char* mode_string = "";
  switch(encoder_mode){
    default:
    case 128:
      mode_string = "VOL";
      break;
    case 130:
      mode_string = "MED";
      break;
    case 129:
      mode_string = "SCR";
      break;
    case 135:
      mode_string = "BRT";
      break;
    case 136:
      mode_string = "BKL";
      break;
    case 134:
      mode_string = "CLK";
      break;
    case 133:
      mode_string = "CS0";
      break;
    case 132:
      mode_string = "CS1";
      break;
    case 131:
      mode_string = "CS2";
      break;
  }
  draw_string(startX + 24, startY + 2, mode_string, PIXEL_ON, XOR, 0);
}
