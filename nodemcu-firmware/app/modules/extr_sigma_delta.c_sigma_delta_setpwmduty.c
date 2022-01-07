
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*) ;
 int platform_sigma_delta_set_pwmduty (int) ;

__attribute__((used)) static int sigma_delta_setpwmduty( lua_State *L )
{
    int duty = luaL_checkinteger( L, 1 );

    if (duty < 0 || duty > 255) {
        return luaL_error( L, "wrong arg range" );
    }

    platform_sigma_delta_set_pwmduty( duty );

    return 0;
}
