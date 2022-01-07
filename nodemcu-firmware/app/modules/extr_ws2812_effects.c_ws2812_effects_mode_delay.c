
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ speed; scalar_t__ mode_delay; int effect_type; } ;


 int SPEED_MAX ;
 int rand () ;
 TYPE_1__* state ;

__attribute__((used)) static uint32_t ws2812_effects_mode_delay()
{

  if (state->speed == 0 && state->mode_delay > 0)
  {
    return state->mode_delay;
  }

  uint32_t delay = 10;
  switch (state->effect_type) {
    case 141:
    case 131:
    case 130:
      delay = 10 + ((1000 * (uint32_t)(SPEED_MAX - state->speed)) / SPEED_MAX);
    break;
    case 134:
    case 137:
    case 135:
    case 136:
      delay = 30 + (rand() % 100) + (200 * (SPEED_MAX - state->speed) / SPEED_MAX);
    break;

    case 129:
    case 133:
    case 140:
    case 132:
    case 138:
    case 139:
    case 128:
      delay = 10 + ((1000 * (uint32_t)(SPEED_MAX - state->speed)) / SPEED_MAX);
    break;

  }
  return delay;
}
