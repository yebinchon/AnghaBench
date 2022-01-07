
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int lua_State ;
struct TYPE_4__ {int effect_type; int mode_delay; int effect_int_param1; int* color; TYPE_1__* buffer; scalar_t__ counter_mode_step; } ;
struct TYPE_3__ {size_t colorsPerLed; } ;


 int EFFECT_PARAM_INVALID ;
 int LIBRARY_NOT_INITIALIZED_ERROR_MSG ;
 int LUA_TNIL ;
 int LUA_TNONE ;
 int LUA_TNUMBER ;
 int LUA_TSTRING ;
 int luaL_argcheck (int *,int ,int,int ) ;
 int luaL_argerror (int *,int,char*) ;
 int luaL_checkoption (int *,int,int *,char const* const*) ;
 int luaL_optinteger (int *,int,int) ;
 char* lua_tolstring (int *,int,size_t*) ;
 int lua_type (int *,int) ;
 TYPE_2__* state ;
 int ws2812_effects_fill_buffer (int ) ;
 int ws2812_effects_fill_color () ;
 int ws2812_effects_gradient (char const*,size_t) ;
 int ws2812_effects_gradient_rgb (char const*,size_t) ;
 int ws2812_effects_mode_blink () ;
 int ws2812_effects_mode_circus_combustus () ;
 int ws2812_effects_mode_color_wipe () ;
 int ws2812_effects_mode_halloween () ;
 int ws2812_effects_mode_larson_scanner () ;
 int ws2812_effects_mode_rainbow () ;
 int ws2812_effects_mode_rainbow_cycle (int) ;
 int ws2812_effects_mode_random_color () ;
 int ws2812_write (TYPE_1__*) ;

__attribute__((used)) static int ws2812_effects_set_mode(lua_State* L) {

  luaL_argcheck(L, state != ((void*)0), 1, LIBRARY_NOT_INITIALIZED_ERROR_MSG);


  static const char * const opts[] = {"static", "blink", "gradient", "gradient_rgb", "random_color", "rainbow",
    "rainbow_cycle", "flicker", "fire", "fire_soft", "fire_intense", "halloween", "circus_combustus",
    "larson_scanner", "cycle", "color_wipe", "random_dot", ((void*)0)};

  int type = luaL_checkoption(L, 1, ((void*)0), opts);

  state->effect_type = type;
  int effect_param = EFFECT_PARAM_INVALID;


  int arg_type = lua_type(L, 2);
  if (arg_type == LUA_TNONE || arg_type == LUA_TNIL)
  {

  }
  else if(arg_type == LUA_TNUMBER)
  {
    effect_param = luaL_optinteger( L, 2, EFFECT_PARAM_INVALID );
  }


  state->counter_mode_step = 0;

  switch (state->effect_type) {
    case 128:

    ws2812_effects_fill_color();
    state->mode_delay = 250;
    break;
    case 144:
    ws2812_effects_mode_blink();
    break;
    case 136:
    if(arg_type == LUA_TSTRING)
    {
      size_t length1;
      const char *buffer1 = lua_tolstring(L, 2, &length1);

      if ((length1 / state->buffer->colorsPerLed < 2) || (length1 % state->buffer->colorsPerLed != 0))
      {
        luaL_argerror(L, 2, "must be at least two colors and same size as buffer colors");
      }

      ws2812_effects_gradient(buffer1, length1);
      ws2812_write(state->buffer);
    }
    else
    {
      luaL_argerror(L, 2, "string expected");
    }

    break;
    case 135:
    if(arg_type == LUA_TSTRING)
    {
      size_t length1;
      const char *buffer1 = lua_tolstring(L, 2, &length1);

      if ((length1 / state->buffer->colorsPerLed < 2) || (length1 % state->buffer->colorsPerLed != 0))
      {
        luaL_argerror(L, 2, "must be at least two colors and same size as buffer colors");
      }

      ws2812_effects_gradient_rgb(buffer1, length1);
      ws2812_write(state->buffer);
    }
    else
    {
      luaL_argerror(L, 2, "string expected");
    }

    break;
    case 130:
    ws2812_effects_mode_random_color();
    break;
    case 132:
    ws2812_effects_mode_rainbow();
    break;
    case 131:
    ws2812_effects_mode_rainbow_cycle(effect_param != EFFECT_PARAM_INVALID ? effect_param : 1);
    break;

    case 137:
    state->effect_int_param1 = effect_param;
    break;
    case 140:
    case 138:
    case 139:
    {
      state->color[0] = 255-40;
      state->color[1] = 255;
      state->color[2] = 40;
      state->color[3] = 0;
    }
    break;
    case 134:
    ws2812_effects_mode_halloween();
    break;
    case 143:
    ws2812_effects_mode_circus_combustus();
    break;
    case 133:
    ws2812_effects_mode_larson_scanner();
    break;
    case 141:
    if (effect_param != EFFECT_PARAM_INVALID) {
      state->effect_int_param1 = effect_param;
    }
    break;
    case 142:
    {
      uint32_t black = 0;
      ws2812_effects_fill_buffer(black);
      ws2812_effects_mode_color_wipe();
      break;
    }
    case 129:
    {

      state->effect_int_param1 = effect_param;
      uint32_t black = 0;
      ws2812_effects_fill_buffer(black);
      break;
    }
  }

}
