
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int lua_State ;
struct TYPE_2__ {int brightness; } ;


 char* LIBRARY_NOT_INITIALIZED_ERROR_MSG ;
 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_checkint (int *,int) ;
 TYPE_1__* state ;

__attribute__((used)) static int ws2812_effects_set_brightness(lua_State* L) {
  uint8_t brightness = luaL_checkint(L, 1);
  luaL_argcheck(L, state != ((void*)0), 1, LIBRARY_NOT_INITIALIZED_ERROR_MSG);
  luaL_argcheck(L, brightness >= 0 && brightness < 256, 1, "should be a 0-255");
  state->brightness = brightness;
  return 0;
}
