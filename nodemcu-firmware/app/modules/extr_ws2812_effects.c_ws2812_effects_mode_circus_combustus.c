
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int colorsPerLed; int * values; } ;
typedef TYPE_1__ ws2812_buffer ;
typedef int uint8_t ;
struct TYPE_4__ {int brightness; TYPE_1__* buffer; } ;


 TYPE_2__* state ;

__attribute__((used)) static int ws2812_effects_mode_circus_combustus() {
  ws2812_buffer * buffer = state->buffer;

  int g1 = 0 * state->brightness / 255;
  int r1 = 255 * state->brightness / 255;
  int b1 = 0 * state->brightness / 255;

  int g2 = 255 * state->brightness / 255;
  int r2 = 255 * state->brightness / 255;
  int b2 = 255 * state->brightness / 255;


  int i,j;
  uint8_t * p = &buffer->values[0];
  for(i = 0; i < buffer->size; i++) {
    if (i % 6 < 2) {
      *p++ = g1;
      *p++ = r1;
      *p++ = b1;
    }
    else if (i % 6 < 4) {
      *p++ = g2;
      *p++ = r2;
      *p++ = b2;
    }
    else {
      *p++ = 0;
      *p++ = 0;
      *p++ = 0;
    }
    for (j = 3; j < buffer->colorsPerLed; j++)
    {
      *p++ = 0;
    }
  }

  return 0;
}
