
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef int lua_State ;


 int MOD_CHECK_ID (int ,unsigned int) ;
 int PLATFORM_GPIO_OUTPUT ;
 int PLATFORM_GPIO_PULLUP ;
 int luaL_argcheck (int *,int ,int,char*) ;
 void* luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*) ;
 int lua_gettop (int *) ;
 int* pin_num ;
 int platform_gpio_exists (size_t) ;
 int platform_gpio_mode (size_t,int ,int ) ;
 int switec ;
 scalar_t__ switec_close (unsigned int) ;
 scalar_t__ switec_setup (unsigned int,int*,int,int ) ;
 int tasknumber ;

__attribute__((used)) static int lswitec_setup( lua_State* L )
{
  unsigned int id;

  id = luaL_checkinteger( L, 1 );
  MOD_CHECK_ID( switec, id );
  int pin[4];

  if (switec_close(id)) {
    return luaL_error( L, "Unable to setup stepper." );
  }

  int i;
  for (i = 0; i < 4; i++) {
    uint32_t gpio = luaL_checkinteger(L, 2 + i);

    luaL_argcheck(L, platform_gpio_exists(gpio), 2 + i, "Invalid pin");

    pin[i] = pin_num[gpio];

    platform_gpio_mode(gpio, PLATFORM_GPIO_OUTPUT, PLATFORM_GPIO_PULLUP);
  }

  int deg_per_sec = 0;
  if (lua_gettop(L) >= 6) {
    deg_per_sec = luaL_checkinteger(L, 6);
  }

  if (switec_setup(id, pin, deg_per_sec, tasknumber)) {
    return luaL_error(L, "Unable to setup stepper.");
  }
  return 0;
}
