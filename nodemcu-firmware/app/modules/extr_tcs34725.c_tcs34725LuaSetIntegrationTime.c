
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int tcs34725IntegrationTime_t ;
typedef int lua_State ;


 int luaL_checkinteger (int *,int) ;
 int tcs34725SetIntegrationTime (int ,int *) ;

uint8_t tcs34725LuaSetIntegrationTime(lua_State* L)
{
 tcs34725IntegrationTime_t it = luaL_checkinteger(L, 1);
 return tcs34725SetIntegrationTime(it,L);
}
