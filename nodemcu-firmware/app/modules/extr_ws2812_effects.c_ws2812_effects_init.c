
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buffer_ref; TYPE_2__* buffer; int brightness; int mode_delay; int speed; } ;
typedef TYPE_1__ ws2812_effects ;
struct TYPE_5__ {int colorsPerLed; } ;
typedef TYPE_2__ ws2812_buffer ;
typedef int uint8_t ;
typedef int lua_State ;


 int BRIGHTNESS_DEFAULT ;
 int DELAY_DEFAULT ;
 int LUA_REGISTRYINDEX ;
 int SPEED_DEFAULT ;
 scalar_t__ calloc (int,size_t) ;
 int free (void*) ;
 int luaL_argcheck (int *,int ,int,char*) ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int luaL_ref (int *,int ) ;
 int luaL_unref (int *,int ,int ) ;
 TYPE_1__* state ;

__attribute__((used)) static int ws2812_effects_init(lua_State *L) {
  ws2812_buffer * buffer = (ws2812_buffer*)luaL_checkudata(L, 1, "ws2812.buffer");
  luaL_argcheck(L, buffer != ((void*)0), 1, "no valid buffer provided");

  if (state != ((void*)0)) {
    luaL_unref(L, LUA_REGISTRYINDEX, state->buffer_ref);
    free((void *) state);
  }

  size_t size = sizeof(ws2812_effects) + buffer->colorsPerLed*sizeof(uint8_t);
  state = (ws2812_effects *) calloc(1,size);

  state->speed = SPEED_DEFAULT;
  state->mode_delay = DELAY_DEFAULT;
  state->brightness = BRIGHTNESS_DEFAULT;
  state->buffer = buffer;

  state->buffer_ref = luaL_ref(L, LUA_REGISTRYINDEX);

  return 0;
}
