
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int interruptTimerTicks; int interruptTimerCPUTicks; int isStarted; } ;
struct TYPE_4__ {TYPE_1__ setupData; } ;


 int lua_pushboolean (int *,int ) ;
 int lua_pushinteger (int *,int ) ;
 TYPE_2__* pwm2_get_module_data () ;

__attribute__((used)) static int lpwm2_get_timer_data(lua_State *L) {
  lua_pushboolean(L, pwm2_get_module_data()->setupData.isStarted);
  lua_pushinteger(L, pwm2_get_module_data()->setupData.interruptTimerCPUTicks);
  lua_pushinteger(L, pwm2_get_module_data()->setupData.interruptTimerTicks);
  return 3;
}
