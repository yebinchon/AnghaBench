
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int MOD_CHECK_ID (int ,int) ;
 int luaL_checkinteger (int *,int) ;
 int platform_sigma_delta_setup (int) ;
 int sigma_delta ;

__attribute__((used)) static int sigma_delta_setup( lua_State *L )
{
    int pin = luaL_checkinteger( L, 1 );

    MOD_CHECK_ID(sigma_delta, pin);

    platform_sigma_delta_setup( pin );

    return 0;
}
