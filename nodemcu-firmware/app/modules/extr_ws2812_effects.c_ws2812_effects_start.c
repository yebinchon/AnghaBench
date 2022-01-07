
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_2__ {int running; int mode_delay; int os_t; scalar_t__ counter_mode_step; scalar_t__ counter_mode_call; } ;


 int FALSE ;
 int LIBRARY_NOT_INITIALIZED_ERROR_MSG ;
 int luaL_argcheck (int *,int ,int,int ) ;
 int os_timer_arm (int *,int ,int ) ;
 int os_timer_disarm (int *) ;
 int os_timer_setfn (int *,int ,int *) ;
 TYPE_1__* state ;
 int ws2812_effects_loop ;

__attribute__((used)) static int ws2812_effects_start(lua_State* L) {


  luaL_argcheck(L, state != ((void*)0), 1, LIBRARY_NOT_INITIALIZED_ERROR_MSG);
  if (state != ((void*)0)) {
    os_timer_disarm(&(state->os_t));
    state->running = 1;
    state->counter_mode_call = 0;
    state->counter_mode_step = 0;

    os_timer_setfn(&(state->os_t), ws2812_effects_loop, ((void*)0));
    os_timer_arm(&(state->os_t), state->mode_delay, FALSE);
  }
  return 0;
}
