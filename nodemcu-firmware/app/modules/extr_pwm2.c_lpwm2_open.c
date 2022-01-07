
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int pwm2_init () ;

__attribute__((used)) static int lpwm2_open(lua_State *L) {
  pwm2_init();
  return 0;
}
