
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 char const* lua_tostring (int *,int) ;

const char *lwan_lua_state_last_error(lua_State *L)
{
    return lua_tostring(L, -1);
}
