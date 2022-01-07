
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int tcs34725Gain_t ;
typedef int lua_State ;


 int luaL_checkinteger (int *,int) ;
 int tcs34725SetGain (int ,int *) ;

uint8_t tcs34725LuaSetGain(lua_State* L)
{
 tcs34725Gain_t gain = luaL_checkinteger(L, 1);
 return tcs34725SetGain(gain,L);
}
