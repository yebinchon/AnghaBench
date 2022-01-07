
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lpwm2_setup_pin_common (int *,int) ;

__attribute__((used)) static int lpwm2_setup_pin_hz(lua_State *L) {
  return lpwm2_setup_pin_common(L, 1);
}
