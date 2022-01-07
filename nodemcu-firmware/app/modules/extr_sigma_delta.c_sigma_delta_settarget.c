
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*) ;
 int platform_sigma_delta_set_target (int) ;

__attribute__((used)) static int sigma_delta_settarget( lua_State *L )
{
    int target = luaL_checkinteger( L, 1 );

    if (target < 0 || target > 255) {
        return luaL_error( L, "wrong arg range" );
    }

    platform_sigma_delta_set_target( target );

    return 0;
}
