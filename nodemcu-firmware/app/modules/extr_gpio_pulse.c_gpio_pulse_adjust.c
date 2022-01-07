
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int next_adjust; } ;
typedef TYPE_1__ pulse_t ;
typedef int lua_State ;


 TYPE_1__* active_pulser ;
 int gpio_pulse_push_state (int *,TYPE_1__*) ;
 int luaL_checkinteger (int *,int) ;
 TYPE_1__* luaL_checkudata (int *,int,char*) ;

__attribute__((used)) static int gpio_pulse_adjust(lua_State *L) {
  pulse_t *pulser = luaL_checkudata(L, 1, "gpio.pulse");

  if (active_pulser != pulser) {
    return 0;
  }

  int offset = luaL_checkinteger(L, 2);

  pulser->next_adjust = offset;

  int rc = gpio_pulse_push_state(L, active_pulser);

  return rc;
}
