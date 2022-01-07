
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_gettop (int *) ;
 int lua_pushnil (int *) ;

__attribute__((used)) static void mp_lua_optarg(lua_State *L, int arg)
{
    while (arg > lua_gettop(L))
        lua_pushnil(L);
}
