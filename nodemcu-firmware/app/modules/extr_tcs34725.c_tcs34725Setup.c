
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int lua_State ;


 int TCS34725_ID ;
 int dbg_printf (char*,int) ;
 int luaL_error (int *,char*) ;
 int lua_pushinteger (int *,int) ;
 int tcs34725Read8 (int ) ;

uint8_t tcs34725Setup(lua_State* L)
{
 uint8_t id = 0;


 id = tcs34725Read8(TCS34725_ID);
 dbg_printf("id: %x\n",id);
 if (id != 0x44) {
  return luaL_error(L, "No TCS34725 found.");
 }

 lua_pushinteger(L, 1);
 return 1;
}
