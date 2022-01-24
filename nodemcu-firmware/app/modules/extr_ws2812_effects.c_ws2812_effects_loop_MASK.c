#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_2__ {scalar_t__ effect_type; int effect_int_param1; int counter_mode_step; int mode_delay; int counter_mode_call; int running; int /*<<< orphan*/  os_t; int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int EFFECT_PARAM_INVALID ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SHIFT_CIRCULAR ; 
 int UINT32_MAX ; 
 scalar_t__ WS2812_EFFECT_BLINK ; 
 scalar_t__ WS2812_EFFECT_CIRCUS_COMBUSTUS ; 
 scalar_t__ WS2812_EFFECT_COLOR_WIPE ; 
 scalar_t__ WS2812_EFFECT_CYCLE ; 
 scalar_t__ WS2812_EFFECT_FIRE_FLICKER ; 
 scalar_t__ WS2812_EFFECT_FIRE_FLICKER_INTENSE ; 
 scalar_t__ WS2812_EFFECT_FIRE_FLICKER_SOFT ; 
 scalar_t__ WS2812_EFFECT_FLICKER ; 
 scalar_t__ WS2812_EFFECT_HALLOWEEN ; 
 scalar_t__ WS2812_EFFECT_LARSON_SCANNER ; 
 scalar_t__ WS2812_EFFECT_RAINBOW ; 
 scalar_t__ WS2812_EFFECT_RAINBOW_CYCLE ; 
 scalar_t__ WS2812_EFFECT_RANDOM_COLOR ; 
 scalar_t__ WS2812_EFFECT_RANDOM_DOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* state ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(void *p)
{

  if (state->effect_type == WS2812_EFFECT_BLINK)
  {
    FUNC3();
  }
  else if (state->effect_type == WS2812_EFFECT_RAINBOW)
  {
    FUNC8();
  }
  else if (state->effect_type == WS2812_EFFECT_RAINBOW_CYCLE)
  {
    // the rainbow cycle effect can be achieved by shifting the buffer
    FUNC2(state->buffer, 1, SHIFT_CIRCULAR, 1, -1);
  }
  else if (state->effect_type == WS2812_EFFECT_FLICKER)
  {
    int flicker_value = state->effect_int_param1 != EFFECT_PARAM_INVALID ? state->effect_int_param1 : 100;
    if (flicker_value == 0) {
      flicker_value = 50;
    }
    FUNC6(flicker_value);
    state->counter_mode_step = (state->counter_mode_step + 1) % 256;
  }
  else if (state->effect_type == WS2812_EFFECT_FIRE_FLICKER)
  {
    FUNC6(110);
    state->counter_mode_step = (state->counter_mode_step + 1) % 256;
  }
  else if (state->effect_type == WS2812_EFFECT_FIRE_FLICKER_SOFT)
  {
    FUNC6(70);
    state->counter_mode_step = (state->counter_mode_step + 1) % 256;
  }
  else if (state->effect_type == WS2812_EFFECT_FIRE_FLICKER_INTENSE)
  {
    FUNC6(170);
    state->counter_mode_step = (state->counter_mode_step + 1) % 256;
  }
  else if (state->effect_type == WS2812_EFFECT_RANDOM_COLOR)
  {
    FUNC9();
  }
  else if (state->effect_type == WS2812_EFFECT_HALLOWEEN)
  {
    FUNC2(state->buffer, 1, SHIFT_CIRCULAR, 1, -1);
  }
  else if (state->effect_type == WS2812_EFFECT_CIRCUS_COMBUSTUS)
  {
    FUNC2(state->buffer, 1, SHIFT_CIRCULAR, 1, -1);
  }
  else if (state->effect_type == WS2812_EFFECT_LARSON_SCANNER)
  {
    FUNC7();
  }
  else if (state->effect_type == WS2812_EFFECT_CYCLE)
  {
    FUNC2(state->buffer, state->effect_int_param1, SHIFT_CIRCULAR, 1, -1);
  }
  else if (state->effect_type == WS2812_EFFECT_COLOR_WIPE)
  {
    FUNC4();
  }
  else if (state->effect_type == WS2812_EFFECT_RANDOM_DOT)
  {
    uint8_t dots = state->effect_int_param1 != EFFECT_PARAM_INVALID ? state->effect_int_param1 : 1;
    FUNC10(dots);
  }

  // set the new delay for this effect
  state->mode_delay = FUNC5();
  // call count
  state->counter_mode_call = (state->counter_mode_call + 1) % UINT32_MAX;
  // write the buffer
  FUNC11(state->buffer);
  // set the timer
  if (state->running == 1 && state->mode_delay >= 10)
  {
    FUNC1(&(state->os_t));
    FUNC0(&(state->os_t), state->mode_delay, FALSE);
  }
}