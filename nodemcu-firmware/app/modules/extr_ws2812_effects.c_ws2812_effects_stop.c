
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_2__ {scalar_t__ running; int os_t; } ;


 int LIBRARY_NOT_INITIALIZED_ERROR_MSG ;
 int luaL_argcheck (int *,int ,int,int ) ;
 int os_timer_disarm (int *) ;
 TYPE_1__* state ;

__attribute__((used)) static int ws2812_effects_stop(lua_State* L) {
  luaL_argcheck(L, state != ((void*)0), 1, LIBRARY_NOT_INITIALIZED_ERROR_MSG);
  if (state != ((void*)0)) {
    os_timer_disarm(&(state->os_t));
    state->running = 0;
  }
  return 0;
}
