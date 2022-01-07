
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int platform_pwm_init () ;

int lpwm_open( lua_State *L ) {
  platform_pwm_init();
  return 0;
}
