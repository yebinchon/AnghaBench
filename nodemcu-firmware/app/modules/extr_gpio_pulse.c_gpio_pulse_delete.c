
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cb_ref; } ;
typedef TYPE_1__ pulse_t ;
typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 TYPE_1__* active_pulser ;
 TYPE_1__* luaL_checkudata (int *,int,char*) ;
 int luaL_unref (int *,int ,int ) ;

__attribute__((used)) static int gpio_pulse_delete(lua_State *L) {
  pulse_t *pulser = luaL_checkudata(L, 1, "gpio.pulse");

  if (pulser == active_pulser) {
    return 0;
  }

  luaL_unref(L, LUA_REGISTRYINDEX, pulser->cb_ref);
  return 0;
}
