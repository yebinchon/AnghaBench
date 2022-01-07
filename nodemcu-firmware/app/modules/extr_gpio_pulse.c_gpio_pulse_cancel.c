
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pulse_t ;
typedef int lua_State ;


 int LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 int TIMER_OWNER ;
 int * active_pulser ;
 int active_pulser_ref ;
 int gpio_pulse_push_state (int *,int *) ;
 int * luaL_checkudata (int *,int,char*) ;
 int luaL_unref (int *,int ,int) ;
 int platform_hw_timer_close (int ) ;

__attribute__((used)) static int gpio_pulse_cancel(lua_State *L) {
  pulse_t *pulser = luaL_checkudata(L, 1, "gpio.pulse");

  if (active_pulser != pulser) {
    return 0;
  }


  platform_hw_timer_close(TIMER_OWNER);

  int rc = gpio_pulse_push_state(L, active_pulser);

  active_pulser = ((void*)0);

  int pulser_ref = active_pulser_ref;
  active_pulser_ref = LUA_NOREF;
  luaL_unref(L, LUA_REGISTRYINDEX, pulser_ref);

  return rc;
}
