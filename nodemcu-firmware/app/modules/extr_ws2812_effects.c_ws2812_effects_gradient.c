
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t colorsPerLed; int size; int* values; } ;
typedef TYPE_1__ ws2812_buffer ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_4__ {int brightness; TYPE_1__* buffer; } ;


 int grb2hsv (int,int,int) ;
 int hsv2grb (int,int,int) ;
 TYPE_2__* state ;

__attribute__((used)) static int ws2812_effects_gradient(const char *gradient_spec, size_t length1) {

  ws2812_buffer * buffer = state->buffer;

  int segments = (length1 / buffer->colorsPerLed) - 1;
  int segmentSize = buffer->size / segments;

  uint8_t g1, r1, b1, g2, r2, b2;
  int i,j,k;

  g2 = *gradient_spec++;
  r2 = *gradient_spec++;
  b2 = *gradient_spec++;

  for (j = 3; j < buffer->colorsPerLed; j++)
  {
    *gradient_spec++;
  }


  uint8_t * p = &buffer->values[0];

  uint16_t h1,h2;
  uint8_t s,v,s1,v1,s2,v2;

  for (k = 0; k < segments; k++) {
    g1 = g2;
    r1 = r2;
    b1 = b2;
    uint32_t hsv1 = grb2hsv(g1, r1, b1);
    h1 = (hsv1 & 0xFFFF0000) >> 16;
    s1 = (hsv1 & 0x0000FF00) >> 8;
    v1 = (hsv1 & 0x000000FF);

    g2 = *gradient_spec++;
    r2 = *gradient_spec++;
    b2 = *gradient_spec++;
    for (j = 3; j < buffer->colorsPerLed; j++)
    {
      *gradient_spec++;
    }

    uint32_t hsv2 = grb2hsv(g2, r2, b2);
    h2 = (hsv2 & 0xFFFF0000) >> 16;
    s2 = (hsv1 & 0x0000FF00) >> 8;
    v2 = (hsv1 & 0x000000FF);


    int maxCCW = h1 > h2 ? h1 - h2 : 360 + h1 - h2;
    int maxCW = h1 > h2 ? 360 + h2 - h1 : h2 - h1;


    int numPixels = segmentSize;

    if (k == segments - 1) {
      numPixels = buffer->size - (segmentSize * (segments - 1));
    }

    int steps = numPixels - 1;

    for(i = 0; i < numPixels; i++) {


      int h = maxCCW > maxCW ? h1 + ((maxCW * i / steps) % 360) : h1 - (maxCCW * i / steps);
      if (h < 0) h = h + 360;
      if (h > 359) h = h - 360;
      s = s1 + ((s2-s1) * i / steps);
      v = v1 + ((v2-v1) * i / steps);

      uint32_t grb = hsv2grb(h, s, v);

      *p++ = ((grb & 0x00FF0000) >> 16) * state->brightness / 255;
      *p++ = ((grb & 0x0000FF00) >> 8) * state->brightness / 255;
      *p++ = (grb & 0x000000FF) * state->brightness / 255;

      for (j = 3; j < buffer->colorsPerLed; j++) {
        *p++ = 0;
      }
    }
  }

  return 0;
}
