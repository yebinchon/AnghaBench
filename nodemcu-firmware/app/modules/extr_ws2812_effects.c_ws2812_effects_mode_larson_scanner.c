
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int colorsPerLed; int* values; } ;
typedef TYPE_1__ ws2812_buffer ;
typedef int uint16_t ;
struct TYPE_4__ {int counter_mode_step; int* color; TYPE_1__* buffer; } ;


 TYPE_2__* state ;

__attribute__((used)) static int ws2812_effects_mode_larson_scanner() {

  ws2812_buffer * buffer = state->buffer;
  int led_index = 0;

  for(int i=0; i < buffer->size * buffer->colorsPerLed; i++) {
    buffer->values[i] = buffer->values[i] >> 1;
  }

  uint16_t pos = 0;

  if(state->counter_mode_step < buffer->size) {
    pos = state->counter_mode_step;
  } else {
    pos = (buffer->size * 2) - state->counter_mode_step - 2;
  }
  pos = pos * buffer->colorsPerLed;
  buffer->values[pos + 1] = state->color[1];
  buffer->values[pos] = state->color[0];
  buffer->values[pos + 2] = state->color[2];

  state->counter_mode_step = (state->counter_mode_step + 1) % ((buffer->size * 2) - 2);
}
