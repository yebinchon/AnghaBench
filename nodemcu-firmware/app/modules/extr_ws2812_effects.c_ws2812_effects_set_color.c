
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int lua_State ;
struct TYPE_2__ {void** color; } ;


 int LIBRARY_NOT_INITIALIZED_ERROR_MSG ;
 int luaL_argcheck (int *,int ,int,int ) ;
 void* luaL_checkinteger (int *,int) ;
 void* luaL_optinteger (int *,int,int ) ;
 TYPE_1__* state ;

__attribute__((used)) static int ws2812_effects_set_color(lua_State* L) {
  luaL_argcheck(L, state != ((void*)0), 1, LIBRARY_NOT_INITIALIZED_ERROR_MSG);

  uint8_t g = luaL_checkinteger(L, 1);
  uint8_t r = luaL_checkinteger(L, 2);
  uint8_t b = luaL_checkinteger(L, 3);
  uint8_t w = luaL_optinteger(L, 4, 0 );

  state->color[0] = g;
  state->color[1] = r;
  state->color[2] = b;
  state->color[3] = w;
  return 0;
}
