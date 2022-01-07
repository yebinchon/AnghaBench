
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8 ;
typedef int lua_State ;
struct TYPE_5__ {TYPE_1__* pin; } ;
struct TYPE_6__ {TYPE_2__ setupData; } ;
struct TYPE_4__ {int resolutionInterruptCounterMultiplier; int resolutionCPUTicks; int frequencyDivisor; int divisableFrequency; int pulseResolutions; int duty; } ;


 size_t const GPIO_PIN_NUM ;
 int luaL_argcheck2 (int *,int,int,char*) ;
 size_t luaL_checkinteger (int *,int) ;
 int lua_pushinteger (int *,int ) ;
 TYPE_3__* pwm2_get_module_data () ;
 int pwm2_is_pin_setup (size_t const) ;

__attribute__((used)) static int lpwm2_get_pin_data(lua_State *L) {
  const uint8 pin = luaL_checkinteger(L, 1);
  luaL_argcheck2(L, pin > 0 && pin <= GPIO_PIN_NUM, 1, "invalid pin number");
  lua_pushinteger(L, pwm2_is_pin_setup(pin));
  lua_pushinteger(L, pwm2_get_module_data()->setupData.pin[pin].duty);
  lua_pushinteger(L, pwm2_get_module_data()->setupData.pin[pin].pulseResolutions);
  lua_pushinteger(L, pwm2_get_module_data()->setupData.pin[pin].divisableFrequency);
  lua_pushinteger(L, pwm2_get_module_data()->setupData.pin[pin].frequencyDivisor);
  lua_pushinteger(L, pwm2_get_module_data()->setupData.pin[pin].resolutionCPUTicks);
  lua_pushinteger(L, pwm2_get_module_data()->setupData.pin[pin].resolutionInterruptCounterMultiplier);
  return 7;
}
