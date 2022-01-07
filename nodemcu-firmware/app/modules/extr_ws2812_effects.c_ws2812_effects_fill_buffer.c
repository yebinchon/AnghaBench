
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int colorsPerLed; int* values; int size; } ;
typedef TYPE_1__ ws2812_buffer ;
typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int brightness; TYPE_1__* buffer; } ;


 TYPE_2__* state ;

__attribute__((used)) static int ws2812_effects_fill_buffer(uint32_t color) {

  ws2812_buffer * buffer = state->buffer;

  uint8_t g = ((color & 0x00FF0000) >> 16);
  uint8_t r = ((color & 0x0000FF00) >> 8);
  uint8_t b = (color & 0x000000FF);
  uint8_t w = buffer->colorsPerLed == 4 ? ((color & 0xFF000000) >> 24) : 0;


  int i;
  uint8_t * p = &buffer->values[0];
  for(i = 0; i < buffer->size; i++) {
    *p++ = g * state->brightness / 255;
    *p++ = r * state->brightness / 255;
    *p++ = b * state->brightness / 255;
    if (buffer->colorsPerLed == 4) {
      *p++ = w * state->brightness / 255;
    }
  }

  return 0;
}
