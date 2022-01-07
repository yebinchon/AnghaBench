
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int colorsPerLed; int * values; } ;
typedef TYPE_1__ ws2812_buffer ;
struct TYPE_4__ {int counter_mode_call; TYPE_1__* buffer; } ;


 int memset (int *,int ,int) ;
 TYPE_2__* state ;
 int ws2812_effects_fill_color () ;

__attribute__((used)) static int ws2812_effects_mode_blink() {
  if(state->counter_mode_call % 2 == 1) {

    ws2812_effects_fill_color();
  }
  else {

    ws2812_buffer * buffer = state->buffer;
    memset(&buffer->values[0], 0, buffer->size * buffer->colorsPerLed);
  }
  return 0;
}
