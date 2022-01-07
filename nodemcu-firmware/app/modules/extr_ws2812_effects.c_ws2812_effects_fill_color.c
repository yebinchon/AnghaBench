
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int* color; } ;


 TYPE_1__* state ;
 int ws2812_effects_fill_buffer (int) ;

__attribute__((used)) static int ws2812_effects_fill_color() {

  uint8_t g = state->color[0];
  uint8_t r = state->color[1];
  uint8_t b = state->color[2];
  uint8_t w = state->color[3];

  uint32_t color = (w << 24) | (g << 16) | (r << 8) | b;

  ws2812_effects_fill_buffer(color);

  return 0;
}
