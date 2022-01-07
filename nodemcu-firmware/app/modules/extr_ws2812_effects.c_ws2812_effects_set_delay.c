
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_2__ {int mode_delay; scalar_t__ speed; } ;


 char* LIBRARY_NOT_INITIALIZED_ERROR_MSG ;
 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_checkinteger (int *,int) ;
 TYPE_1__* state ;

__attribute__((used)) static int ws2812_effects_set_delay(lua_State* L) {
  luaL_argcheck(L, state != ((void*)0), 1, LIBRARY_NOT_INITIALIZED_ERROR_MSG);
  const int delay = luaL_checkinteger(L, 1);
  luaL_argcheck(L, delay >= 10, 1, "must be equal / larger than 10");

  state->mode_delay = delay;
  state->speed = 0;
  return 1;
}
