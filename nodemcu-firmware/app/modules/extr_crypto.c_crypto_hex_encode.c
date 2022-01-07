
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int luaL_Buffer ;


 int * crypto_hexbytes ;
 int luaL_addchar (int *,int ) ;
 int luaL_buffinit (int *,int *) ;
 char* luaL_checklstring (int *,int,int*) ;
 int luaL_pushresult (int *) ;

__attribute__((used)) static int crypto_hex_encode( lua_State* L)
{
  int len, i;
  const char* msg = luaL_checklstring(L, 1, &len);
  luaL_Buffer out;

  luaL_buffinit(L, &out);
  for (i = 0; i < len; i++) {
    luaL_addchar(&out, crypto_hexbytes[msg[i] >> 4]);
    luaL_addchar(&out, crypto_hexbytes[msg[i] & 0xf]);
  }
  luaL_pushresult(&out);
  return 1;
}
