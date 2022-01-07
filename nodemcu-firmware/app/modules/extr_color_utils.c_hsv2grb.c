
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;



uint32_t hsv2grb(uint16_t hue, uint8_t sat, uint8_t val)
{
  uint16_t H_accent = (hue % 360) / 60;
  uint16_t bottom = ((255 - sat) * val)>>8;
  uint16_t top = val;
  uint8_t rising = ((top-bottom) *(hue%60 ) ) / 60 + bottom;
  uint8_t falling = ((top-bottom) *(60-hue%60) ) / 60 + bottom;

  uint8_t r;
  uint8_t g;
  uint8_t b;

  switch(H_accent) {
  case 0:
    r = top;
    g = rising;
    b = bottom;
    break;

  case 1:
    r = falling;
    g = top;
    b = bottom;
    break;

  case 2:
    r = bottom;
    g = top;
    b = rising;
    break;

  case 3:
    r = bottom;
    g = falling;
    b = top;
    break;

  case 4:
    r = rising;
    g = bottom;
    b = top;
    break;

  case 5:
    r = top;
    g = bottom;
    b = falling;
    break;
  }
  uint32_t result = (g << 16) | (r << 8) | b;
  return result;
}
