#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {int effect_type; int mode_delay; int effect_int_param1; int* color; TYPE_1__* buffer; scalar_t__ counter_mode_step; } ;
struct TYPE_3__ {size_t colorsPerLed; } ;

/* Variables and functions */
 int EFFECT_PARAM_INVALID ; 
 int /*<<< orphan*/  LIBRARY_NOT_INITIALIZED_ERROR_MSG ; 
 int LUA_TNIL ; 
 int LUA_TNONE ; 
 int LUA_TNUMBER ; 
 int LUA_TSTRING ; 
#define  WS2812_EFFECT_BLINK 144 
#define  WS2812_EFFECT_CIRCUS_COMBUSTUS 143 
#define  WS2812_EFFECT_COLOR_WIPE 142 
#define  WS2812_EFFECT_CYCLE 141 
#define  WS2812_EFFECT_FIRE_FLICKER 140 
#define  WS2812_EFFECT_FIRE_FLICKER_INTENSE 139 
#define  WS2812_EFFECT_FIRE_FLICKER_SOFT 138 
#define  WS2812_EFFECT_FLICKER 137 
#define  WS2812_EFFECT_GRADIENT 136 
#define  WS2812_EFFECT_GRADIENT_RGB 135 
#define  WS2812_EFFECT_HALLOWEEN 134 
#define  WS2812_EFFECT_LARSON_SCANNER 133 
#define  WS2812_EFFECT_RAINBOW 132 
#define  WS2812_EFFECT_RAINBOW_CYCLE 131 
#define  WS2812_EFFECT_RANDOM_COLOR 130 
#define  WS2812_EFFECT_RANDOM_DOT 129 
#define  WS2812_EFFECT_STATIC 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char const* const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* state ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC19(lua_State* L) {

  FUNC0(L, state != NULL, 1, LIBRARY_NOT_INITIALIZED_ERROR_MSG);

  // opts must be same order as effect type enum
  static const char * const opts[] = {"static", "blink", "gradient", "gradient_rgb", "random_color", "rainbow",
    "rainbow_cycle", "flicker", "fire", "fire_soft", "fire_intense", "halloween", "circus_combustus",
    "larson_scanner", "cycle", "color_wipe", "random_dot", NULL};

  int type = FUNC2(L, 1, NULL, opts);

  state->effect_type = type;
  int effect_param = EFFECT_PARAM_INVALID;
  // check additional int parameter
  // First mandatory parameter
  int arg_type = FUNC5(L, 2);
  if (arg_type == LUA_TNONE || arg_type == LUA_TNIL)
  {
    // we don't have a second parameter
  }
  else if(arg_type == LUA_TNUMBER)
  {
    effect_param = FUNC3( L, 2, EFFECT_PARAM_INVALID );
  }

  // initialize the effect
  state->counter_mode_step = 0;

  switch (state->effect_type) {
    case WS2812_EFFECT_STATIC:
    // fill with currently set color
    FUNC7();
    state->mode_delay = 250;
    break;
    case WS2812_EFFECT_BLINK:
    FUNC10();
    break;
    case WS2812_EFFECT_GRADIENT:
    if(arg_type == LUA_TSTRING)
    {
      size_t length1;
      const char *buffer1 = FUNC4(L, 2, &length1);

      if ((length1 / state->buffer->colorsPerLed < 2) || (length1 % state->buffer->colorsPerLed != 0))
      {
        FUNC1(L, 2, "must be at least two colors and same size as buffer colors");
      }

      FUNC8(buffer1, length1);
      FUNC18(state->buffer);
    }
    else
    {
      FUNC1(L, 2, "string expected");
    }

    break;
    case WS2812_EFFECT_GRADIENT_RGB:
    if(arg_type == LUA_TSTRING)
    {
      size_t length1;
      const char *buffer1 = FUNC4(L, 2, &length1);

      if ((length1 / state->buffer->colorsPerLed < 2) || (length1 % state->buffer->colorsPerLed != 0))
      {
        FUNC1(L, 2, "must be at least two colors and same size as buffer colors");
      }

      FUNC9(buffer1, length1);
      FUNC18(state->buffer);
    }
    else
    {
      FUNC1(L, 2, "string expected");
    }

    break;
    case WS2812_EFFECT_RANDOM_COLOR:
    FUNC17();
    break;
    case WS2812_EFFECT_RAINBOW:
    FUNC15();
    break;
    case WS2812_EFFECT_RAINBOW_CYCLE:
    FUNC16(effect_param != EFFECT_PARAM_INVALID ? effect_param : 1);
    break;
    // flicker
    case WS2812_EFFECT_FLICKER:
    state->effect_int_param1 = effect_param;
    break;
    case WS2812_EFFECT_FIRE_FLICKER:
    case WS2812_EFFECT_FIRE_FLICKER_SOFT:
    case WS2812_EFFECT_FIRE_FLICKER_INTENSE:
    {
      state->color[0] = 255-40;
      state->color[1] = 255;
      state->color[2] = 40;
      state->color[3] = 0;
    }
    break;
    case WS2812_EFFECT_HALLOWEEN:
    FUNC13();
    break;
    case WS2812_EFFECT_CIRCUS_COMBUSTUS:
    FUNC11();
    break;
    case WS2812_EFFECT_LARSON_SCANNER:
    FUNC14();
    break;
    case WS2812_EFFECT_CYCLE:
    if (effect_param != EFFECT_PARAM_INVALID) {
      state->effect_int_param1 = effect_param;
    }
    break;
    case WS2812_EFFECT_COLOR_WIPE:
    {
      uint32_t black = 0;
      FUNC6(black);
      FUNC12();
      break;
    }
    case WS2812_EFFECT_RANDOM_DOT:
    {
      // check if more than 1 dot shall be set
      state->effect_int_param1 = effect_param;
      uint32_t black = 0;
      FUNC6(black);
      break;
    }
  }

}