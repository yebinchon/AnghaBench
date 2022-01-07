
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pulse_t ;
typedef int lua_State ;


 int gpio_pulse_push_state (int *,int *) ;
 int * luaL_checkudata (int *,int,char*) ;

__attribute__((used)) static int gpio_pulse_getstate(lua_State *L) {
  pulse_t *pulser = luaL_checkudata(L, 1, "gpio.pulse");

  return gpio_pulse_push_state(L, pulser);
}
