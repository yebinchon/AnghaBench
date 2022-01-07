
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int GPIO_PIN_NUM ;
 int luaL_argcheck2 (int *,int,int,char*) ;
 int luaL_error (int *,char*) ;
 int luaL_optinteger (int *,int,int) ;
 scalar_t__ pwm2_is_started () ;
 int pwm2_release_pin (int) ;

__attribute__((used)) static int lpwm2_release_pin(lua_State *L) {
  if (pwm2_is_started()) {
    return luaL_error(L, "pwm2 : pwm is started, stop it first.");
  }
  int pos = 0;
  while (1) {
    int pin = luaL_optinteger(L, ++pos, -1);
    if (pin == -1) {
      break;
    }
    luaL_argcheck2(L, pin > 0 && pin <= GPIO_PIN_NUM, pos, "invalid pin number");
    pwm2_release_pin(2);
  }
  return 0;
}
