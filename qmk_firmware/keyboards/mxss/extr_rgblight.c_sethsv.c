
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_2__ {int hue; int sat; } ;
typedef int LED_TYPE ;


 int * CIE1931_CURVE ;
 size_t RGBLIGHT_FLED1 ;
 size_t RGBLIGHT_FLED2 ;
 int RGBLIGHT_LIMIT_VAL ;
 TYPE_1__* fled_hs ;
 int * led ;
 int pgm_read_byte (int *) ;
 int setrgb (int,int,int,int *) ;

void sethsv(uint16_t hue, uint8_t sat, uint8_t val, LED_TYPE *led1) {
  uint8_t r = 0, g = 0, b = 0, base, color;


  if (led1 == &led[RGBLIGHT_FLED1]) {
      fled_hs[0].hue = hue;
      fled_hs[0].sat = sat;
  } else if (led1 == &led[RGBLIGHT_FLED2]) {
      fled_hs[1].hue = hue;
      fled_hs[1].sat = sat;
  }

  if (val > RGBLIGHT_LIMIT_VAL) {
      val=RGBLIGHT_LIMIT_VAL;
  }

  if (sat == 0) {
    r = val;
    g = val;
    b = val;
  } else {
    base = ((255 - sat) * val) >> 8;
    color = (val - base) * (hue % 60) / 60;

    switch (hue / 60) {
      case 0:
        r = val;
        g = base + color;
        b = base;
        break;
      case 1:
        r = val - color;
        g = val;
        b = base;
        break;
      case 2:
        r = base;
        g = val;
        b = base + color;
        break;
      case 3:
        r = base;
        g = val - color;
        b = val;
        break;
      case 4:
        r = base + color;
        g = base;
        b = val;
        break;
      case 5:
        r = val;
        g = base;
        b = val - color;
        break;
    }
  }
  r = pgm_read_byte(&CIE1931_CURVE[r]);
  g = pgm_read_byte(&CIE1931_CURVE[g]);
  b = pgm_read_byte(&CIE1931_CURVE[b]);

  setrgb(r, g, b, led1);
}
